using System.ComponentModel.DataAnnotations;

namespace estoque.Core.models
{
    public class Usuario
    {
        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string Login { get; set; }

        [Required]
        [StringLength(32)]
        public string Senha { get; set; }

        [Required]
        [StringLength(255)]
        public string Nome { get; set; }

        [Required]
        [StringLength(150)]
        public string Email { get; set; }
        
    }
}