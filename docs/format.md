# Ruin data format

A .lua file for a ruin returns one huge dictionary (Lua table). This Lua table contains the following optional key/value pairs:
* entities - Array of [entities](#Entity)
* tiles - Array of [tiles](#Tile)

### Examples

```lua
return
{
  entities =
  {
    {"stone-wall", {x = -1.5, y = -2.5}},
    {"tree-05", {x = 1.46, y = -1.65},
  },
  tiles =
  {
    {"water", {x = -1, y = -1}},
    {"water", {x = -1, y = 0}},
    {"water", {x = 0, y = -1}},
    {"water", {x = 0, y = 0}},
  }
}
```
```lua
return
{
  entities =
  {
    {"gun-turret", {x = 1, y = 0}, {force = "enemy", items = {["firearm-magazine"] = 1}, }},
  }
}
```

```lua
return
{
  tiles =
  {
    {"concrete", {x = -1, y = -1}},
    {"concrete", {x = -1, y = 0}},
    {"concrete", {x = 0, y = -1}},
    {"concrete", {x = 0, y = 0}},
  }
}
```

## Entity

An array:
* [Entity expression](#Entity_expression) - Mandatory. - The first member specifies the entity name.
* [Position](#Position) - Mandatory. - The second member specifies the position of the entity, relative to the center of the ruin.
* [Entity_options](#Entity_options) - Optional. - The third member specifies extra options for the entity creation, for example the entity force.

### Examples

`{"stone-wall", {x = -1.5, y = -2.5}}`<br>
`{{type = "random-of-entity-type", entity_type = "tree"}, {x = -12.5, y = -12.5}`<br>
`{"transport-belt", {x = 0, y = 0}, {dmg = {dmg = 30}, dir = "east"}}`<br>
`{"assembling-machine-1", {x = 4, y = 0}, {dmg = {dmg = {type = "random", min = 50, max = 190}}, recipe = "copper-cable"}}`<br>
`{"gun-turret", {x = 1, y = 6}, {force = "enemy"}}`<br>
`{"wooden-chest", {x = 1.5, y = 1.5}, {items = {["piercing-rounds-magazine"] = {type = "random", min = 5, max = 50}}}}`

## Entity_options

A table with the following optional key/value pairs:
* force - string - Optional. - Name of the force the entity. Defaults to "neutral", use "enemy" for base defenses.
* dir - string - Optional. - Direction the entity. Defaults to "north".
* items - [Items](#Items) - Optional. - Items inserted into the entity after spawning. Defaults to no items.
* dmg - [Damage](#Damage) - Optional. - Damage the entity takes after spawning. Defaults to 0 physical damage from the neutral force.
* recipe - string - Optional. - Name of the recipe of this assembling machine. Defaults to no recipe.

### Examples

`{dmg = {dmg = 30}, dir = "east"}`<br>
`{dmg = {dmg = {type = "random", min = 50, max = 190}}, recipe = "copper-cable"}`<br>
`{force = "enemy"}`<br>
`{items = {["iron-plate"] = 14}}`<br>
`{items = {["piercing-rounds-magazine"] = {type = "random", min = 5, max = 50}}}`

## Tile

An array:
* string - Mandatory. - The first member specifies the tile name.
* [Position](#Position) - Mandatory. - The second member specifies the position of the tile, relative to the center of the ruin.

### Examples

`{"concrete", {x = -1, y = -1}}`<br>
`{"water", {x = -1, y = -1}}`

## Entity_expression

An entity name (string) or a table with the following key/value pairs:
* type - string - Mandatory. - Type of the entity expression. Available types: "random-of-entity-type" - random entity from the given entity_type
* entity_type - string - Mandatory for type "random-of-entity-type". - Entity type of the random entity.

### Examples

`"stone-wall"`<br>
`"fast-inserter"`<br>
`{type = "random-of-entity-type", entity_type = "tree"}`<br>
`{type = "random-of-entity-type", entity_type = "splitter"}`

## Position

All positions inside ruins are relative to the center of the ruin. Positions are be specified as a dictionary with x, y as keys with float values.

### Examples

`{x = 1.5, y = -2.42}`<br>
`{x = -2, y = 0}`

## Direction

A string. Possible values are:
* "north"
* "northeast"
* "east"
* "southeast"
* "south"
* "southwest"
* "west"
* "northwest"

### Examples

`"north"`<br>
`"west"`

## Damage

A table with the following key/value pairs:

* dmg - [Number expression](#Number_expression) - Mandatory. - The amount of damage to be done.
* type - string - Optional. - Damage type. Defaults to "physical".
* force - [ForceSpecification](https://lua-api.factorio.com/latest/Concepts.html#ForceSpecification) - Optional. - The force that will be doing the damage. Defaults to "neutral".

### Examples

`{dmg = 30}`<br>
`{dmg = 30, force = "player"}`<br>
`{dmg = 30, type = "laser"}`<br>
`{dmg = 30, type = "impact", force = "enemy"}`<br>
`{dmg = {type = "random", min = 50, max = 190}}`<br>
`{dmg = {type = "random", min = 50, max = 190}, type = "impact", force = "enemy"}`

## Items

A dictionary of items names (strings) to [number expressions](#Number_expression).
Numbers of items must be unsigned intergers.

### Examples

`{coal = 7}`<br>
`{stone = {type = "random", min = 0, max = 12}}`<br>
`{["iron-plate"] = 14, ["coal"] = 98, ["firearm-magazine"] = {type = "random", min = 100, max = 500}}`<br>
`{["wood"] = {type = "random", min = 5, max = 50}, ["raw-fish"] = 20, ["copper-plate"] = {type = "random", min = 100, max = 300}}`

## Number_expression

A number or a table with the following key/value pairs:
* type - string - Mandatory. - Type of the number expression. Available types: "random" - random number from math.random()
* min - number - Mandatory for type "random". - Inclusive lower bound on the random number.
* max - number - Mandatory for type "random". - Inclusive upper bound on the random number.

### Examples

`20`<br>
`0.92`<br>
`{type = "random", min = 100, max = 300} -- gives ints`
