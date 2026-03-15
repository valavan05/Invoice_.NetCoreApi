using Microsoft.EntityFrameworkCore;
using InvoiceCoreAPI.Data;
using InvoiceCoreAPI.Contracts;
using InvoiceCoreAPI.Mapper;
using InvoiceCoreAPI.Repositories;
using InvoiceCoreAPI.Services;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddDbContext<AppDbContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));
builder.Services.AddScoped<IItemmasterRepository, ItemmasterRepositories>();
builder.Services.AddScoped<IItemMasterService, ItemMasterService>();
builder.Services.AddAutoMapper(typeof(ItemMasterProfile));

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseAuthorization();

app.MapControllers();

app.Run();
