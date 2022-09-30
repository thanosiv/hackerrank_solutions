with maxpop as (
    Select MAX(population) as maxp
    From City
),
minpop as (
    Select MIN(population) as minp
    From City
)

Select
    Maxp - Minp
From
    maxpop, minpop
