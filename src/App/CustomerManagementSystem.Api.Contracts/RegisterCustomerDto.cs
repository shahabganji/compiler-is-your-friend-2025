namespace CustomerManagementSystem.Api.Contracts;

public record RegisterCustomerDto
{
    public string FullName { get; set; } = null!;
    public string Email { get; set; } = null!;
    public DateTime BirthDate { get; set; }
}
