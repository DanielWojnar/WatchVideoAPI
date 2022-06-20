using System;
using System.Collections.Generic;
using System.Text;
using WatchVideoAPI.Data;
using WatchVideoAPI.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.InMemory;

namespace WatchVideoAPI.Test;

public class WatchVideoContextTestBase : IDisposable
{
    protected readonly WatchVideoContext _context;
    public WatchVideoContextTestBase()
    {
        var options = new DbContextOptionsBuilder<WatchVideoContext>()
            .UseInMemoryDatabase(databaseName: Guid.NewGuid().ToString())
            .Options;
        WatchVideoContextTestInitializer.Initialize(options);
        _context = new WatchVideoContext(options);
        _context.Database.EnsureCreated();
    }

    public void Dispose()
    {
        _context.Database.EnsureDeleted();
        _context.Dispose();
    }
}
