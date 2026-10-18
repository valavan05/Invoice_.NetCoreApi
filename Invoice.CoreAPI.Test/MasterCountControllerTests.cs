using Invoice.BAL.Contracts;
using Invoice.CoreAPI.Controllers;
using Invoice.DTOs;
using Invoice.Model;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Moq;

namespace Invoice.CoreAPI.Test.Controllers;

public class MasterCountControllerTests
{
    private readonly Mock<IMasterCountService> _serviceMock;
    private readonly Mock<ILogger<MasterCountController>> _loggerMock;
    private readonly MasterCountController _controller;

    public MasterCountControllerTests()
    {
        _serviceMock = new Mock<IMasterCountService>();
        _loggerMock = new Mock<ILogger<MasterCountController>>();

        _controller = new MasterCountController(
            _serviceMock.Object,
            _loggerMock.Object);
    }

    [Fact]
    public async Task Customers_ReturnsOk_WithCount()
    {
        _serviceMock.Setup(s => s.CountCustomersAsync(true)).ReturnsAsync(5);

        var result = await _controller.Customers(true);

        var ok = Assert.IsType<OkObjectResult>(result);
        var response = Assert.IsType<ApiResponse<int>>(ok.Value);

        Assert.True(response.Success);
        Assert.Equal("Customer count retrieved successfully", response.Message);
        Assert.Equal(5, response.Data);

        _serviceMock.Verify(s => s.CountCustomersAsync(true), Times.Once);
    }

    [Fact]
    public async Task CustomersByCity_ReturnsOk_WithGroups()
    {
        var groups = new List<CityCountDto>
        {
            new CityCountDto("A", 2),
            new CityCountDto("B", 1)
        };

        _serviceMock.Setup(s => s.CountCustomersGroupedByCityAsync(null)).ReturnsAsync(groups);

        var result = await _controller.CustomersByCity(null);


        var ok = Assert.IsType<OkObjectResult>(result);
        var response = Assert.IsType<ApiResponse<IReadOnlyList<CityCountDto>>>(ok.Value);

        Assert.True(response.Success);
        Assert.Equal("Customer counts by city retrieved successfully", response.Message);
        Assert.Equal(2, response.Data.Count);

        _serviceMock.Verify(s => s.CountCustomersGroupedByCityAsync(null), Times.Once);
    }

    [Fact]
    public async Task Vendors_ReturnsOk_WithCount()
    {
        _serviceMock.Setup(s => s.CountVendorsAsync(null)).ReturnsAsync(7);

        var result = await _controller.Vendors(null);

        var ok = Assert.IsType<OkObjectResult>(result);
        var response = Assert.IsType<ApiResponse<int>>(ok.Value);

        Assert.True(response.Success);
        Assert.Equal("Vendor count retrieved successfully", response.Message);
        Assert.Equal(7, response.Data);

        _serviceMock.Verify(s => s.CountVendorsAsync(null), Times.Once);
    }

    [Fact]
    public async Task Categories_ReturnsOk_WithCount()
    {
        _serviceMock.Setup(s => s.CountCategoriesAsync(false)).ReturnsAsync(3);

        var result = await _controller.Categories(false);

        var ok = Assert.IsType<OkObjectResult>(result);
        var response = Assert.IsType<ApiResponse<int>>(ok.Value);

        Assert.True(response.Success);
        Assert.Equal("Category count retrieved successfully", response.Message);
        Assert.Equal(3, response.Data);

        _serviceMock.Verify(s => s.CountCategoriesAsync(false), Times.Once);
    }

    [Fact]
    public async Task Items_ReturnsOk_WithCount()
    {
        _serviceMock.Setup(s => s.CountItemsAsync(10, true)).ReturnsAsync(11);

        var result = await _controller.Items(10, true);

        var ok = Assert.IsType<OkObjectResult>(result);
        var response = Assert.IsType<ApiResponse<int>>(ok.Value);

        Assert.True(response.Success);
        Assert.Equal("Item count retrieved successfully", response.Message);
        Assert.Equal(11, response.Data);

        _serviceMock.Verify(s => s.CountItemsAsync(10, true), Times.Once);
    }

    [Fact]
    public async Task Customers_Returns500_OnException()
    {
        _serviceMock.Setup(s => s.CountCustomersAsync(null)).ThrowsAsync(new Exception("boom"));

        var result = await _controller.Customers(null);

        var obj = Assert.IsType<ObjectResult>(result);
        Assert.Equal(500, obj.StatusCode);

        var response = Assert.IsType<ApiResponse<string>>(obj.Value);
        Assert.False(response.Success);
        Assert.Equal("Error retrieving customer count", response.Message);
    }
}
