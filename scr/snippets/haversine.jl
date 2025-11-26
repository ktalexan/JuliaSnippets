# src/snippets/haversine.jl

abstract type DistanceUnit end

struct Meters <: DistanceUnit end
struct Kilometers <: DistanceUnit end
struct Miles <: DistanceUnit end
struct Feet <: DistanceUnit end

get_radius(::Meters) = 6371000.0
get_radius(::Kilometers) = 6371.0
get_radius(::Miles) = 3958.8
get_radius(::Feet) = 20902231.0

"""
    haversine(lat1, lon1, lat2, lon2, unit::DistanceUnit)

Calculate distance between (lat1, lon1) and (lat2, lon2).
"""
function haversine(lat1::Real, lon1::Real, lat2::Real, lon2::Real, unit::DistanceUnit)
    φ1, λ1 = deg2rad(lat1), deg2rad(lon1)
    φ2, λ2 = deg2rad(lat2), deg2rad(lon2)

    Δφ = φ2 - φ1
    Δλ = λ2 - λ1

    a = sin(Δφ / 2)^2 + cos(φ1) * cos(φ2) * sin(Δλ / 2)^2
    c = 2 * atan(sqrt(a), sqrt(1 - a))

    # calculate the result
    result = get_radius(unit) * c
    
    # format the result to rounding to 3 decimal places
    return result
end

# Default to Kilometers
haversine(lat1, lon1, lat2, lon2) = haversine(lat1, lon1, lat2, lon2, Kilometers())