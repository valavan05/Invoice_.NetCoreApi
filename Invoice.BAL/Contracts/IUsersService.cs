using Invoice.DTOs;
using Invoice.Model;


namespace Invoice.BAL.Contracts;

public interface IUsersService
{
    Task<ApiResponse<UsersDto>> AddAsync(UserCreateDto dto);
    Task<ApiResponse<IEnumerable<UsersDto>>> GetAllAsync();
    Task<ApiResponse<UsersDto?>> GetByIdAsync(int id);
    Task<ApiResponse<UsersDto>> UpdateAsync(int id, UserUpdateDto dto);
    Task<ApiResponse<bool>> DeleteAsync(int id, string updatedBy);
    Task<ApiResponse<PagedResultDto<UsersDto>>> GetAllPagedAsync
        (UserFilterDto filter);
    Task<UsersDto?> ValidateUserAsync(string username, string password);
}
