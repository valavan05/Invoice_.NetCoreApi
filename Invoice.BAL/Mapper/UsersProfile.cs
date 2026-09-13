using AutoMapper;
using Invoice.Data.Entities;
using Invoice.DTOs;

namespace Invoice.BAL.Mapper;

public class UsersProfile : Profile
{
    public UsersProfile()
    {
        CreateMap<UsersEntity, UsersDto>().ReverseMap();
    }
}
