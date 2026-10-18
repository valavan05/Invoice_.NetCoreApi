using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Invoice.BAL.Services;
using Invoice.BAL.Contracts;
using Invoice.DAL.Contracts;
using Invoice.Data.Entities;
using Invoice.DTOs;
using Moq;
using Xunit;

namespace Invoice.BAL.Test.Services;

public class MasterCountServiceTests
{
    private readonly Mock<ICustomerRepository> _customerMock;
    private readonly Mock<IItemmasterRepository> _itemsMock;
    private readonly Mock<IUsersRepository> _usersMock;
    private readonly Mock<ICategoryService> _categoriesMock;
    private readonly Mock<IVendorService> _vendorsMock;
    private readonly MasterCountService _service;

    public MasterCountServiceTests()
    {
        _customerMock = new Mock<ICustomerRepository>();
        _itemsMock = new Mock<IItemmasterRepository>();
        _usersMock = new Mock<IUsersRepository>();
        _categoriesMock = new Mock<ICategoryService>();
        _vendorsMock = new Mock<IVendorService>();

        _service = new MasterCountService(
            _customerMock.Object,
            _itemsMock.Object,
            _usersMock.Object,
            _categoriesMock.Object,
            _vendorsMock.Object);
    }

    [Fact]
    public async Task CountCategoriesAsync_filters_by_isActive()
    {
        var cats = new List<CategoryDto>
        {
            new() { Id = 1, Name = "A", IsActive = true },
            new() { Id = 2, Name = "B", IsActive = false },
            new() { Id = 3, Name = "C", IsActive = null }
        };

        _categoriesMock.Setup(x => x.GetAllAsync()).ReturnsAsync(cats);

        Assert.Equal(3, await _service.CountCategoriesAsync(null));
        Assert.Equal(1, await _service.CountCategoriesAsync(true));
        Assert.Equal(1, await _service.CountCategoriesAsync(false));
    }

    [Fact]
    public async Task GetCategoryNamesAsync_trims_distinct_and_orders()
    {
        var cats = new List<CategoryDto>
        {
            new() { Name = " rice " },
            new() { Name = "Rice" },
            new() { Name = "wheat" },
            new() { Name = null },
            new() { Name = "  " }
        };

        _categoriesMock.Setup(x => x.GetAllAsync()).ReturnsAsync(cats);

        var names = await _service.GetCategoryNamesAsync();

        var list = names.ToList();
        Assert.Equal(2, list.Count);
        // Distinct preserves the first-seen casing; input had " rice " before "Rice",
        // so the expected value is the trimmed lowercase form.
        Assert.Equal("rice", list[0]);
        Assert.Equal("wheat", list[1]);
    }

    [Fact]
    public async Task CountItemsInCategoryAsync_returns_null_when_not_found()
    {
        _categoriesMock.Setup(x => x.GetAllAsync()).ReturnsAsync(new List<CategoryDto>());

        var result = await _service.CountItemsInCategoryAsync("missing", null);

        Assert.Null(result);
    }

    [Fact]
    public async Task CountItemsInCategoryAsync_returns_count_when_found()
    {
        var cats = new List<CategoryDto> { new() { Id = 5, Name = " Cat " } };
        _categoriesMock.Setup(x => x.GetAllAsync()).ReturnsAsync(cats);

        _itemsMock
            .Setup(x => x.GetAllPagedAsync(It.IsAny<ItemmasterFilterDto>()))
            .ReturnsAsync(new PagedResultDto<ItemmasterEntity> { TotalRecords = 42 });

        var count = await _service.CountItemsInCategoryAsync("cat", true);

        Assert.Equal(42, count);

        _itemsMock.Verify(x => x.GetAllPagedAsync(It.Is<ItemmasterFilterDto>(f => f.CategoryId == 5 && f.IsActive == true && f.PageNumber == 1 && f.PageSize == 1)), Times.Once);
    }

    [Fact]
    public async Task CountCustomersByCityAsync_counts_correctly()
    {
        var custs = new List<CustomerEntity>
        {
            new() { City = " Mumbai ", IsActive = true, IsDeleted = false },
            new() { City = "mumbai", IsActive = true, IsDeleted = false },
            new() { City = "Delhi", IsActive = true, IsDeleted = false },
            new() { City = "mumbai", IsActive = false, IsDeleted = false },
            new() { City = "mumbai", IsActive = true, IsDeleted = true }
        };

        _customerMock.Setup(x => x.GetAllAsync()).ReturnsAsync(custs);

        Assert.Equal(2, await _service.CountCustomersByCityAsync("mumbai", true));
        Assert.Equal(3, await _service.CountCustomersByCityAsync("mumbai", null));
    }

    [Fact]
    public async Task CountCustomersGroupedByCityAsync_groups_and_orders()
    {
        var custs = new List<CustomerEntity>
        {
            new() { City = "b", IsActive = true, IsDeleted = false },
            new() { City = "A", IsActive = true, IsDeleted = false },
            new() { City = "a", IsActive = true, IsDeleted = false },
            new() { City = null, IsActive = true, IsDeleted = false }
        };

        _customerMock.Setup(x => x.GetAllAsync()).ReturnsAsync(custs);

        var groups = (await _service.CountCustomersGroupedByCityAsync(null)).ToList();

        Assert.Equal(2, groups.Count);
        Assert.Equal("A", groups[0].City);
        Assert.Equal(2, groups[0].Count);
        Assert.Equal("b", groups[1].City);
    }
}
