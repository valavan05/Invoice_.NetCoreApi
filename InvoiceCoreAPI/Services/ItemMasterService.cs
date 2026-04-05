using AutoMapper;
using InvoiceCoreAPI.Contracts;
using InvoiceCoreAPI.DTO;
using InvoiceCoreAPI.Entities;
using InvoiceCoreAPI.Repositories;
namespace InvoiceCoreAPI.Services
{
    public class ItemMasterService : IItemMasterService
    {
        private readonly IItemmasterRepository _repository;
        private readonly IMapper _mapper;
        public ItemMasterService(IItemmasterRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }
        public async Task<int> AddAsync(ItemmasterDto dto)
        {
            var entity = _mapper.Map<Itemmaster>(dto);
            return await _repository.AddAsync(entity);
        }
        public async Task<IEnumerable<ItemmasterDto>> GetAllAsync()
        {
            var items = await _repository.GetAllAsync();
            return _mapper.Map<IEnumerable<ItemmasterDto>>(items);
        }
        public async Task<ItemmasterDto?> GetByIdAsync(int id)
        {
            var item = await _repository.GetByIdAsync(id);
            return item == null ? null : _mapper.Map<ItemmasterDto>(item);
        }
        public async Task<bool> UpdateAsync(ItemmasterDto dto)
        {
            var entity = _mapper.Map<Itemmaster>(dto);
            return await _repository.UpdateAsync(entity);
        }
        public async Task<bool> DeleteAsync(int id)
        {
            return await _repository.DeleteAsync(id);
        }
        public async Task<PagedResulDto<ItemmasterDto>> GetAllPagedAsync(
string? catCode,
string? itemName,
string? uom,
int pageNumber,
int pageSize)
        {
            var result = await _repository.GetAllPagedAsync(
                catCode, itemName, uom, pageNumber, pageSize);

            return new PagedResulDto<ItemmasterDto>
            {
                Data = _mapper.Map<IEnumerable<ItemmasterDto>>(result.Data),
                TotalRecords = result.TotalRecords
            };
        }
    }
}