using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using InvoiceCoreAPI.Contracts;
using InvoiceCoreAPI.DTO;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using Microsoft.AspNetCore.Identity.Data;

namespace InvoiceCoreAPI.Controllers;

[ApiController]
[Route("api/v{version:apiVersion}/[controller]")]
[ApiVersion("1.0")]
public class LoginController : ControllerBase
{
    private readonly IUsersService _userService;
    private readonly IConfiguration _configuration;
    private readonly ILogger<LoginController> _logger;

    public LoginController(
        IUsersService userService,
        IConfiguration configuration,
        ILogger<LoginController> logger)
    {
        _userService = userService;
        _configuration = configuration;
        _logger = logger;
    }

    [AllowAnonymous]
    [HttpPost]
    public async Task<IActionResult> Login(
        [FromBody] LoginRequestDto request)
    {
        try
        {
            if (string.IsNullOrWhiteSpace(request.UserName) ||
                string.IsNullOrWhiteSpace(request.Password))
            {
                return BadRequest(new
                {
                    Success = false,
                    Message = "Username and password are required."
                });
            }

            var user =
                await _userService.ValidateUserAsync(
                    request.UserName,
                    request.Password);

            if (user == null)
            {
                return Unauthorized(new
                {
                    Success = false,
                    Message = "Invalid username or password."
                });
            }

            var jwtKey =
                _configuration["Jwt:Key"];

            var jwtIssuer =
                _configuration["Jwt:Issuer"];

            var jwtExpiryMinutes =
                _configuration.GetValue<int>(
                    "Jwt:ExpiryMinutes");

            if (string.IsNullOrWhiteSpace(jwtKey))
            {
                throw new InvalidOperationException(
                    "JWT Key is not configured.");
            }

            if (string.IsNullOrWhiteSpace(jwtIssuer))
            {
                throw new InvalidOperationException(
                    "JWT Issuer is not configured.");
            }

            var expiration =
                DateTime.UtcNow.AddMinutes(
                    jwtExpiryMinutes);

            var claims = new List<Claim>
            {
                new Claim(
                    ClaimTypes.NameIdentifier,
                    user.Id.ToString()),

                new Claim(
                    ClaimTypes.Name,
                    user.UserName),

                new Claim(
                    ClaimTypes.Email,
                    user.Email),

                new Claim(
                    ClaimTypes.GivenName,
                    user.FirstName),

                new Claim(
                    ClaimTypes.Surname,
                    user.LastName),

                new Claim(
                    "displayName",
                    user.DisplayName)
            };

            var key =
                new SymmetricSecurityKey(
                    Encoding.UTF8.GetBytes(jwtKey));

            var credentials =
                new SigningCredentials(
                    key,
                    SecurityAlgorithms.HmacSha256);

            var tokenDescriptor =
                new SecurityTokenDescriptor
                {
                    Subject =
                        new ClaimsIdentity(claims),

                    Expires = expiration,

                    Issuer = jwtIssuer,

                    Audience = jwtIssuer,

                    SigningCredentials = credentials
                };

            var tokenHandler =
                new JwtSecurityTokenHandler();

            var token =
                tokenHandler.CreateToken(
                    tokenDescriptor);

            var tokenString =
                tokenHandler.WriteToken(token);

            var response =
                new LoginResponseDto
                {
                    Token = tokenString,
                    Expiration = expiration,
                    User = user
                };

            return Ok(new
            {
                Success = true,
                Message = "Login successful.",
                Data = response
            });
        }
        catch (Exception ex)
        {
            _logger.LogError(
                ex,
                "Error occurred during login.");

            return StatusCode(
                StatusCodes.Status500InternalServerError,
                new
                {
                    Success = false,
                    Message = "An error occurred during login."
                });
        }
    }
}


















/* using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using InvoiceCoreAPI.DTO;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace InvoiceCoreApi.Controllers;

[Route("api/[controller]")]
[ApiController]
public class LoginController : ControllerBase
{
    private readonly ILogger<LoginController> _logger;
    private readonly IConfiguration _configuration;

    public LoginController(ILogger<LoginController> logger, IConfiguration configuration)
    {
        _logger = logger;
        _configuration = configuration;
    }

    [AllowAnonymous]
    [HttpPost("Login")]
    public async Task<IActionResult> Login([FromBody] LoginDto dto)
    {

        if (!ModelState.IsValid)
            return BadRequest();
        

        var configUsername = _configuration["UserCredentials:Username"];
        var configPassword = _configuration["UserCredentials:Password"];
        if (dto.UserName != configUsername || dto.Password != configPassword)
            return Unauthorized();
        var jwtKey = _configuration["Jwt:Key"]; 
        var jwtIssuer = _configuration["Jwt:Issuer"]; 
        var expiryMinutes = Convert.ToInt32(_configuration["Jwt:ExpiryMinutes"]); 

        var claims = new[]
        {
            new Claim(ClaimTypes.Name, dto.UserName),
            new Claim(ClaimTypes.Role, "Admin"),
            new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString())
        };
        if (string.IsNullOrEmpty(jwtKey)) throw new Exception("JWT key is missing in the configuration");
        var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(jwtKey));
        var cre = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);
        var expiry = DateTime.UtcNow.AddMinutes(expiryMinutes);

        var token = new JwtSecurityToken(
            issuer: jwtIssuer,
            audience: null,
            claims: claims,
            expires: expiry,
            signingCredentials: cre
            );
        return Ok(new
        {
            token = new JwtSecurityTokenHandler().WriteToken(token),
            expiration = expiry
        });

    }
} */ 