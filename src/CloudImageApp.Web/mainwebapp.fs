// Program.fs
open Microsoft.AspNetCore.Builder
open Microsoft.Extensions.Hosting
open Microsoft.Extensions.DependencyInjection

[<EntryPoint>]
let main args =
    let builder = WebApplication.CreateBuilder(args)
    
    // Add services
    builder.Services.AddControllers()
    builder.Services.AddEndpointsApiExplorer()
    
    let app = builder.Build()
    
    app.UseHttpsRedirection()
    app.UseAuthorization()
    app.MapControllers()
    
    app.Run()
    0

