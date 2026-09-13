using Invoice.Data.Entities;
using Invoice.DTOs;

namespace Invoice.DAL.Contracts;

public interface IItemmasterRepository
{
    Task<int> AddAsync(ItemmasterEntity entity);
    Task<IEnumerable<ItemmasterEntity>> GetAllAsync();
    Task<ItemmasterEntity?> GetByIdAsync(int id);
    Task<bool> UpdateAsync(ItemmasterEntity entity);
    Task<bool> DeleteAsync(int id);
    Task<PagedResultDto<ItemmasterEntity>> GetAllPagedAsync(ItemmasterFilterDto search);
}
