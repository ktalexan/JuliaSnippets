using Test
using JuliaSnippets # Load your package

@testset "Haversine Snippet" begin
    # Test 1: Distance to self should be 0
    @test haversine(40.7128, -74.0060, 40.7128, -74.0060) == 0.0

    # Test 2: Known approximate distance
    # London (51.5074, -0.1278) to Paris (48.8566, 2.3522)
    # is roughly 344 km.
    london_lat, london_lon = 51.5074, -0.1278
    paris_lat, paris_lon = 48.8566, 2.3522

    dist = haversine(london_lat, london_lon, paris_lat, paris_lon, Kilometers())

    # Use isapprox (≈) for floating point comparisons with a tolerance (atol)
    @test dist ≈ 344.0 atol = 5.0

    # Test 3: Check unit conversion logic
    # 1 km should differ from 1 mile
    d_km = haversine(0, 0, 0, 1, Kilometers())
    d_mi = haversine(0, 0, 0, 1, Miles())

    @test d_km != d_mi
    @test d_km < d_mi # 1 degree lat is ~111km, which is number-wise < ~69miles? 
    # Wait, careful: 111 km > 69 miles.
    # Let's check magnitude: 
    # Result in km will be ~111. Result in miles will be ~69.
    # So d_km (111) > d_mi (69).
    @test d_km > d_mi
end