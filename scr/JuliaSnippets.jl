# src/JuliaSnippets.jl

module JuliaSnippets

# 1. Export the symbols you want the user to see
export haversine
export Meters, Kilometers, Miles, Feet

# 2. Include the implementation from the subdirectory
# Note the path: relative to src/JuliaSnippets.jl
include("snippets/haversine.jl")

end