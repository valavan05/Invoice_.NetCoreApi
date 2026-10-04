using Invoice.DTOs;
using AutoMapper;
using Invoice.Data.Entities;

namespace Invoice.BAL.Mapper;

public class Categoryprofile : Profile
{
    public Categoryprofile()
    {
        CreateMap<CategoryEntity, CategoryDto>().ReverseMap();
    }
}
