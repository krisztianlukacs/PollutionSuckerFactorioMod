# Pollution Sucker Graphics Generation Prompt

## Project Overview

Generate graphics for a Factorio 2.0 mod called **Pollution Sucker** featuring three machines that work together as a pollution-cleaning pipeline: Pollution Sucker (collects polluted air), Air Cleaner Factory (processes and cleans the air), and Fresh Air Outlet (releases clean air back into the environment). The style should match Factorio's isometric, industrial sci-fi aesthetic with an environmental/green-tech theme.

**Mod Concept:** Pollution is sucked from the atmosphere, piped as "polluted air" fluid into a massive cleaning factory that uses water to filter it, then the resulting "clean air" is released through outlets that actively reduce local pollution.

---

## REQUIRED FILES

### 1. Entity Sprites (Main Building Graphics)

#### File: `pollution-sucker.png`

- **Size:** 64 x 64 pixels
- **Style:** Isometric view (Factorio standard ~26.57 degree angle)
- **Scale:** Building occupies 1x1 tile (32px per tile with perspective)
- **Visual Description:**
  A compact industrial air intake unit. The design should feature:
  - A large turbine fan or intake grill on the top, visibly spinning/angled
  - Industrial housing with a cylindrical or boxy metal body
  - A single pipe output connection on the south side
  - Small warning lights or status LED indicator
  - Visible air intake vents/slats around the body
  - A small base/mounting plate
  - Color scheme: Dark steel gray body, **brownish-yellow/smog-colored** accents around the intake to suggest it's pulling in dirty air, orange warning stripes
  - Should look like a small, rugged industrial air sampler/vacuum unit

#### File: `air-cleaner-factory.png`

- **Size:** 768 x 384 pixels
- **Style:** Isometric view (Factorio standard)
- **Scale:** Very large building, occupies 12x4 tiles
- **Visual Description:**
  A massive industrial air purification plant. This is the centerpiece of the mod. The design should feature:
  - **Central processing section:** Large filtration chambers with visible internals (mesh screens, water spray nozzles, chemical scrubbers)
  - **Left side (input):** Two pipe connection points on the west wall -- one for polluted air (top), one for water intake (bottom). Visible brownish/dirty air entering
  - **Right side (output):** Two pipe connection points on the east wall -- one for clean air output (top), one for recycled water output (bottom). Visible clean/white air exiting
  - **Industrial infrastructure:** Tall scrubber columns, cooling towers, water tanks, filtration units arranged in a processing line from left to right
  - **Water treatment visible:** Pipes with flowing water, settling tanks, drip trays
  - **Walkways and platforms:** Maintenance catwalks along the top
  - **Control room:** Small control booth or monitoring station integrated into the structure
  - **Smoke/vapor effects:** Subtle steam/vapor venting from the clean side (white/light)
  - Color scheme: Primary **dark industrial gray/blue** metal structure, **brown/rust accents** on the dirty input side gradually transitioning to **white/light blue/green** on the clean output side, showing the purification process visually. Yellow/black hazard stripes on appropriate edges
  - Should look like a heavy-duty industrial water-scrubbing air purification facility

#### File: `fresh-air-outlet.png`

- **Size:** 256 x 256 pixels
- **Style:** Isometric view (Factorio standard)
- **Scale:** Building occupies 4x4 tiles (each tile = 32px with perspective)
- **Visual Description:**
  A clean air distribution/release tower. The design should feature:
  - **Central column:** A tall cylindrical or tapered chimney/tower with wide vents at the top that release clean air upward and outward
  - **Top section:** Large open vents, fans, or diffuser arrays pointing upward, with a subtle clean white/cyan air glow or mist effect emanating from them
  - **Pipe input:** Single pipe connection on the north side for incoming clean air
  - **Base structure:** Solid concrete and steel foundation, 4x4 footprint
  - **Green indicators:** Green status lights, leaf/eco symbols or green painted accents to visually communicate "clean/environmental"
  - **Air diffusion elements:** Multiple vent louvers or mesh screens to distribute air evenly
  - **Structural supports:** Visible structural beams and reinforcement
  - Color scheme: **Clean white and light green** primary colors, polished steel/aluminum accents, **green LED status lights**, concrete gray base. Should clearly contrast with the dirty input side of the system
  - Should look like a purpose-built air distribution tower -- clean, well-maintained, almost like an oversized HVAC unit with an environmental purpose

---

### 2. Shadow Sprites

#### File: `pollution-sucker-shadow.png`

- **Size:** 96 x 64 pixels (wider for shadow projection)
- **Style:** Soft black/gray shadow, semi-transparent
- **Direction:** Shadow cast to the bottom-right (Factorio standard lighting from top-left)

#### File: `air-cleaner-factory-shadow.png`

- **Size:** 1024 x 512 pixels (wider and taller for shadow of the massive building)
- **Style:** Soft black/gray shadow, semi-transparent
- **Direction:** Shadow cast to the bottom-right

#### File: `fresh-air-outlet-shadow.png`

- **Size:** 384 x 320 pixels (wider for shadow, taller structure casts longer shadow)
- **Style:** Soft black/gray shadow, semi-transparent
- **Direction:** Shadow cast to the bottom-right

---

### 3. Item Icons (Inventory/Crafting)

#### File: `pollution-sucker-icon.png`

- **Size:** 64 x 64 pixels
- **Style:** Simplified top-down or 3/4 view of the Pollution Sucker
- **Background:** Transparent
- **Description:** Recognizable miniature showing the turbine intake fan on top of a compact metal housing. Visible brownish air intake glow. Steel gray body with orange accent.

#### File: `air-cleaner-factory-icon.png`

- **Size:** 64 x 64 pixels
- **Style:** Simplified 3/4 view showing the elongated factory
- **Background:** Transparent
- **Description:** Recognizable miniature of the large air cleaning factory. Should show the gradient from dirty (brown/gray, left) to clean (white/green, right). Visible scrubber columns and water elements. Blue-gray industrial body.

#### File: `fresh-air-outlet-icon.png`

- **Size:** 64 x 64 pixels
- **Style:** Simplified 3/4 view of the outlet tower
- **Background:** Transparent
- **Description:** Recognizable miniature of the clean air tower. White/green color scheme with visible vent openings at top. Green status light dot visible. Clean, bright appearance.

---

### 4. Fluid Icons

#### File: `polluted-air-icon.png`

- **Size:** 64 x 64 pixels
- **Style:** Factorio fluid icon style (similar to steam icon layout)
- **Background:** Transparent
- **Description:**
  - A cloud/gas shape with a dirty, murky appearance
  - Color: Dark brownish-gray, muddy yellow-brown tones (`base_color: r=0.2, g=0.2, b=0.2`)
  - Small particulate dots or specks visible in the cloud to suggest contamination
  - Subtle skull or hazard symbol watermark (optional, for clarity)
  - Should clearly communicate "this is dirty/polluted gas"

#### File: `clean-air-icon.png`

- **Size:** 64 x 64 pixels
- **Style:** Factorio fluid icon style
- **Background:** Transparent
- **Description:**
  - A cloud/gas shape with a fresh, clean appearance
  - Color: Light cyan-white, with subtle blue tint (`base_color: r=0.8, g=1, b=1`)
  - Sparkle or shine effects to suggest purity
  - Could include a subtle leaf or checkmark symbol
  - Should clearly communicate "this is clean/purified gas"

---

### 5. Technology Icon (Research Screen)

#### File: `pollution-sucker-tech.png`

- **Size:** 256 x 256 pixels
- **Style:** Detailed illustration suitable for technology tree
- **Description:**
  - Central focus: A stylized depiction of the full pollution-cleaning pipeline
  - Left side: Dark, polluted air cloud being sucked into machinery
  - Center: The air cleaning process (water sprays, filtration)
  - Right side: Clean, bright air being released
  - Can include schematic arrows showing the flow: polluted air -> cleaning -> clean air
  - Background: Subtle industrial grid or blueprint-style pattern
  - Color gradient from dark/brown/gray (polluted) to bright/white/green (clean)
  - Should convey "environmental cleanup technology" / "industrial air purification breakthrough"

---

## STYLE GUIDELINES FOR FACTORIO

### General Aesthetic

- **Isometric angle:** ~26.57 degrees (standard Factorio perspective)
- **Lighting:** Primary light source from top-left
- **Color palette:** Industrial grays and metals as base, with environmental color coding:
  - **Polluted/dirty:** Browns, dark grays, muddy yellows, smog colors
  - **Clean/processed:** Whites, light cyans, greens, bright blues
  - **Machinery:** Steel gray, dark blue-gray, riveted metal
- **Detail level:** High detail but readable at game zoom levels
- **Outline:** Subtle dark outline to separate from background

### Material Appearance

- **Metals:** Brushed steel, painted industrial surfaces, visible rivets/bolts/welds
- **Concrete:** Weathered gray with subtle texture for bases
- **Filters/mesh:** Visible mesh screens, filter media with appropriate dirty/clean appearance
- **Pipes/tubes:** Industrial piping, clearly showing fluid flow direction
- **Water elements:** Visible water flow, spray nozzles, drip effects where appropriate
- **Fans/turbines:** Angled blades suggesting rotation, industrial fan housings

### Environmental Color Coding (Unique to This Mod)

The graphics should tell a visual story of purification:
- Input side of machines: Darker, dirtier, brownish tones
- Output side of machines: Lighter, cleaner, white/green tones
- This gradient helps players intuitively understand which side is input vs output

### DO:

- Use consistent lighting direction (top-left)
- Include small details (vents, panels, warning stripes, bolts, gauges)
- Show the transition from dirty to clean visually on the Air Cleaner Factory
- Make each building's silhouette distinct and recognizable at small sizes
- Use green/eco accents on the Fresh Air Outlet to distinguish it
- Keep pipe connections visually obvious at their specified positions

### DON'T:

- Make it too clean/futuristic (should look industrial and functional)
- Use pure black or pure white (maintain Factorio's muted palette)
- Make glow/emission effects too intense or overwhelming
- Forget the isometric perspective
- Make the three buildings look too similar -- each should have a distinct silhouette and color identity

---

## FILE STRUCTURE FOR MOD

Place generated files in:

```
PollutionSucker_0.1.0/
└── graphics/
    ├── entity/
    │   ├── pollution-sucker.png
    │   ├── pollution-sucker-shadow.png
    │   ├── air-cleaner-factory.png
    │   ├── air-cleaner-factory-shadow.png
    │   ├── fresh-air-outlet.png
    │   └── fresh-air-outlet-shadow.png
    ├── icons/
    │   ├── pollution-sucker-icon.png
    │   ├── air-cleaner-factory-icon.png
    │   ├── fresh-air-outlet-icon.png
    │   ├── polluted-air-icon.png
    │   └── clean-air-icon.png
    └── technology/
        └── pollution-sucker-tech.png
```

---

## OPTIONAL: ANIMATION FRAMES

If the AI can generate animation frames, create working animations:

#### File: `pollution-sucker-working.png`

- **Size:** 64 x 64 pixels x 16 frames (1024 x 64 spritesheet)
- **Animation:** Fan/turbine rotating, brownish air particles being drawn in, status light blinking

#### File: `air-cleaner-factory-working.png`

- **Size:** 768 x 384 pixels x 8 frames (6144 x 384 spritesheet)
- **Animation:** Water spray effects cycling, filtration bubbles, subtle steam venting from clean side, internal machinery moving, status lights cycling

#### File: `fresh-air-outlet-working.png`

- **Size:** 256 x 256 pixels x 16 frames (4096 x 256 spritesheet)
- **Animation:** Top fans spinning, clean air/mist pulsing upward, green lights gently pulsing, vent louvers cycling

---

## SUMMARY TABLE

| File Name | Size (px) | Type | Priority |
|---|---|---|---|
| `pollution-sucker.png` | 64x64 | Entity | HIGH |
| `air-cleaner-factory.png` | 768x384 | Entity | HIGH |
| `fresh-air-outlet.png` | 256x256 | Entity | HIGH |
| `pollution-sucker-shadow.png` | 96x64 | Shadow | MEDIUM |
| `air-cleaner-factory-shadow.png` | 1024x512 | Shadow | MEDIUM |
| `fresh-air-outlet-shadow.png` | 384x320 | Shadow | MEDIUM |
| `pollution-sucker-icon.png` | 64x64 | Icon | HIGH |
| `air-cleaner-factory-icon.png` | 64x64 | Icon | HIGH |
| `fresh-air-outlet-icon.png` | 64x64 | Icon | HIGH |
| `polluted-air-icon.png` | 64x64 | Icon | HIGH |
| `clean-air-icon.png` | 64x64 | Icon | HIGH |
| `pollution-sucker-tech.png` | 256x256 | Tech | MEDIUM |
| `pollution-sucker-working.png` | 1024x64 | Animation | LOW |
| `air-cleaner-factory-working.png` | 6144x384 | Animation | LOW |
| `fresh-air-outlet-working.png` | 4096x256 | Animation | LOW |

---

## EXAMPLE PROMPTS FOR SINGLE IMAGES

### Pollution Sucker Entity:

```
Create an isometric industrial air intake unit for a Factorio-style game.
A compact 1x1 tile machine with a large turbine intake fan on top, housed in
a cylindrical steel body with air intake vents/slats around the sides. Dark
steel gray metal with brownish-yellow accents around the intake suggesting
dirty air being pulled in. Orange warning stripes on the base. A single pipe
output visible on one side. Small status LED light. Industrial, rugged look.
Size: 64x64 pixels, transparent background. Lighting from top-left.
Style: detailed industrial, functional and robust.
```

### Air Cleaner Factory Entity:

```
Create an isometric massive industrial air purification plant for a Factorio-style
game, occupying a 12x4 tile footprint. The facility stretches horizontally with
a visible processing flow from left to right. Left side has pipe inputs with
brownish dirty air entering. Center features tall scrubber columns, water spray
chambers, filtration tanks, and settling pools. Right side has pipe outputs with
clean white air exiting. The color transitions from dirty brown/gray on the left
to clean white/light-blue-green on the right. Includes catwalks, control booth,
water piping, cooling elements, and industrial infrastructure. Dark blue-gray
metal construction with yellow/black hazard stripes.
Size: 768x384 pixels, transparent background. Lighting from top-left.
Style: heavy industrial, detailed, Factorio aesthetic.
```

### Fresh Air Outlet Entity:

```
Create an isometric clean air distribution tower for a Factorio-style game.
A 4x4 tile structure featuring a central cylindrical tower with wide-open vents
and fans at the top releasing purified air upward. Clean white and light green
color scheme with polished steel accents. Concrete and steel base foundation.
Green LED status lights. Multiple vent louvers and mesh diffusers. A pipe input
connection on one side. Subtle white mist/clean air effect emanating from the top
vents. Should look clean, well-maintained, and environmentally purposeful.
Size: 256x256 pixels, transparent background. Lighting from top-left.
Style: clean industrial, environmental tech, Factorio aesthetic.
```

### Polluted Air Fluid Icon:

```
Create a 64x64 pixel fluid icon for a Factorio-style game representing
"Polluted Air". A murky, dark brownish-gray gas cloud shape with visible
particulate specks/dots suggesting contamination. Muddy yellow-brown tones.
Transparent background. Should clearly look dirty and unhealthy compared
to clean air. Factorio fluid icon style.
```

### Clean Air Fluid Icon:

```
Create a 64x64 pixel fluid icon for a Factorio-style game representing
"Clean Air". A bright, light cyan-white gas cloud shape with subtle sparkle
effects suggesting purity. Light blue tint. Transparent background. Should
clearly look fresh and clean. Factorio fluid icon style.
```

### Technology Icon:

```
Create a 256x256 pixel technology research icon for a Factorio-style game.
The image shows the concept of "Air Purification Technology". Left side has
a dark polluted air cloud (brown/gray), center shows industrial cleaning
machinery with water sprays and filters, right side shows bright clean air
(white/cyan/green) being released. Arrows or flow lines show the purification
process direction. Subtle blueprint-style grid background. Color gradient from
dark/polluted to bright/clean. Should convey an environmental technology
breakthrough.
```
