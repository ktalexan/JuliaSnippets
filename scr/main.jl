# scr/main.jl

# 1. Bring the file into scope
include("JuliaSnippets.jl")
using .JuliaSnippets
using Formatting


# 2. Example usage of the haversine function
lat1, lon1 = 34.0522, -118.2437  # Los Angeles, CA
lat2, lon2 = 40.7128, -74.0060   # New York City, NY


distance_km = JuliaSnippets.haversine(lat1, lon1, lat2, lon2, JuliaSnippets.Kilometers())
println("Distance between LA and NYC: $(format(distance_km, commas = true, precision = 2)) kilometers")

distance_miles = JuliaSnippets.haversine(lat1, lon1, lat2, lon2, JuliaSnippets.Miles())
println("Distance between LA and NYC: $(format(distance_miles, commas = true, precision = 2)) miles")

distance_meters = JuliaSnippets.haversine(lat1, lon1, lat2, lon2, JuliaSnippets.Meters())
println("Distance between LA and NYC: $(format(distance_meters, commas = true, precision = 2)) meters")

distance_feet = JuliaSnippets.haversine(lat1, lon1, lat2, lon2, JuliaSnippets.Feet())
println("Distance between LA and NYC: $(format(distance_feet, commas = true, precision = 2)) feet")

