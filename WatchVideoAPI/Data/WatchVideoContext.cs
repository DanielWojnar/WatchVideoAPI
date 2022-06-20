using Microsoft.EntityFrameworkCore;
using WatchVideoAPI.Models;

namespace WatchVideoAPI.Data;

public class WatchVideoContext : DbContext
{
    public WatchVideoContext(DbContextOptions<WatchVideoContext> options) : base(options)
    {

    }

    public DbSet<Video> Videos { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {

    }
}
