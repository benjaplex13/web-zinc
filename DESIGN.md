---
name: Forge & Zinc
colors:
  surface: '#f9f9f9'
  surface-dim: '#dadada'
  surface-bright: '#f9f9f9'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f3f3f4'
  surface-container: '#eeeeee'
  surface-container-high: '#e8e8e8'
  surface-container-highest: '#e2e2e2'
  on-surface: '#1a1c1c'
  on-surface-variant: '#44474a'
  inverse-surface: '#2f3131'
  inverse-on-surface: '#f0f1f1'
  outline: '#74777a'
  outline-variant: '#c4c7c9'
  surface-tint: '#5b5f62'
  primary: '#33373a'
  on-primary: '#ffffff'
  primary-container: '#4a4e51'
  on-primary-container: '#bcbfc3'
  inverse-primary: '#c3c7ca'
  secondary: '#5f5e5f'
  on-secondary: '#ffffff'
  secondary-container: '#e2dfe0'
  on-secondary-container: '#636263'
  tertiary: '#602500'
  on-tertiary: '#ffffff'
  tertiary-container: '#853500'
  on-tertiary-container: '#ffab82'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#e0e3e6'
  primary-fixed-dim: '#c3c7ca'
  on-primary-fixed: '#181c1f'
  on-primary-fixed-variant: '#43474a'
  secondary-fixed: '#e5e2e3'
  secondary-fixed-dim: '#c8c6c7'
  on-secondary-fixed: '#1b1b1c'
  on-secondary-fixed-variant: '#474647'
  tertiary-fixed: '#ffdbcb'
  tertiary-fixed-dim: '#ffb693'
  on-tertiary-fixed: '#341000'
  on-tertiary-fixed-variant: '#7a3000'
  background: '#f9f9f9'
  on-background: '#1a1c1c'
  surface-variant: '#e2e2e2'
typography:
  display-lg:
    fontFamily: Montserrat
    fontSize: 56px
    fontWeight: '800'
    lineHeight: '1.1'
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Montserrat
    fontSize: 40px
    fontWeight: '700'
    lineHeight: '1.2'
  headline-lg-mobile:
    fontFamily: Montserrat
    fontSize: 32px
    fontWeight: '700'
    lineHeight: '1.2'
  headline-md:
    fontFamily: Montserrat
    fontSize: 24px
    fontWeight: '700'
    lineHeight: '1.3'
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '400'
    lineHeight: '1.6'
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.5'
  label-sm:
    fontFamily: JetBrains Mono
    fontSize: 12px
    fontWeight: '500'
    lineHeight: '1.0'
    letterSpacing: 0.05em
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  base: 4px
  xs: 8px
  sm: 16px
  md: 24px
  lg: 48px
  xl: 80px
  gutter: 24px
  margin-mobile: 20px
  margin-desktop: 64px
---

## Brand & Style

This design system is built for an industrial powerhouse, specifically catering to the precision-heavy sector of zinc roofing and construction. The aesthetic direction is **Industrial Modernism**: a blend of high-contrast corporate reliability and the raw, structural integrity of heavy industry. 

The target audience consists of architects, general contractors, and high-end residential clients who value permanence and engineering excellence. The UI must evoke a sense of "immovable trust" through heavy weights and solid blocks of color, balanced by "mathematical precision" achieved via generous whitespace and crisp, technical alignments. The overall mood is serious, professional, and energetically focused on action.

## Colors

The palette is rooted in the materials of the trade. 

- **Steel Gray (#4A4E51):** Used as the primary foundation for structural elements, secondary buttons, and icons. It mimics the weathered patina of high-quality zinc.
- **Charcoal Black (#1A1A1B):** Used for deep contrast, headers, and high-impact text. It provides the "weight" necessary for an industrial brand.
- **Vibrant Orange (#F37021):** The energy source of the UI. This is used exclusively for primary actions, critical alerts, and progress indicators.
- **Pure White:** Used as the background canvas to ensure the industrial elements don't feel claustrophobic or dated.

Support colors should include a light "Gravel" gray (#F2F4F5) for surface backgrounds to prevent pure-white eye strain in data-heavy sections.

## Typography

Typography follows a strict hierarchy of "The Architect" (Montserrat) and "The Engineer" (Inter).

- **Headlines:** Use Montserrat in Bold or ExtraBold. The geometric construction of the letters mirrors the precision of metalwork. For large hero sections, use tight letter-spacing to create a "blocky," structural feel.
- **Body Text:** Use Inter for maximum legibility. Its neutral, systematic nature keeps the focus on the content and technical specifications.
- **Technical Labels:** JetBrains Mono is introduced for small captions, part numbers, or technical specs to lean into the industrial/drafting aesthetic.

## Layout & Spacing

This design system utilizes a **12-column fixed grid** for desktop (max-width 1280px) and a **4-column fluid grid** for mobile. 

The spacing rhythm is based on a **4px baseline**, emphasizing tight groupings for related data and large "structural gaps" between major sections. 
- **Desktop:** Use 64px side margins to provide an airy, premium feel that offsets the heavy typography. 
- **Vertical Rhythm:** Sections should be separated by 'xl' spacing to allow the bold headlines room to breathe.
- **Alignment:** All elements should feel "snapped" to the grid, avoiding centered layouts in favor of strong left-aligned "axial" arrangements.

## Elevation & Depth

Elevation in this design system is functional rather than decorative. 

- **Structural Outlines:** Use 1px borders in Steel Gray (#4A4E51) at 20% opacity for most containers. This mimics blueprints and technical drawings.
- **Ambient Shadows:** When depth is required (such as on hovered cards), use a "heavy" shadow with low blur: `0px 4px 0px 0px rgba(26, 26, 27, 0.1)`. This creates a tactile, physical lift rather than a soft, ethereal one.
- **Tonal Layering:** Use the Neutral Gray background to distinguish between "Site" (the page) and "Tools" (sidebars or floating panels).

## Shapes

The shape language is **Soft-Industrial**. 

While the brand is "rugged," pure 90-degree angles can feel hostile. We use a standard **0.25rem (4px)** radius for most components (buttons, input fields, images) to maintain a crisp, professional edge that is still approachable. Large cards may use the `rounded-lg` (8px) token to feel more like finished architectural modules.

## Components

### Buttons
- **Primary:** Vibrant Orange background, White text, Semi-Bold Inter. On hover, shift background to a slightly deeper burnt orange. 
- **Secondary:** Steel Gray background, White text. No shadow.
- **Tertiary:** Transparent background, Charcoal text, 1px Steel Gray border.

### Cards
- Cards must feature a white background and a subtle 1px border.
- **Hover Effect:** On hover, the card should translate -4px Y-axis and gain the "Ambient Shadow" described in the Elevation section.

### Input Fields
- Solid 1px Steel Gray border. Focus state uses a 2px Vibrant Orange ring. Labels should use the `label-sm` technical mono font for a "spec sheet" look.

### Accordion FAQ
- Use a "Panel" style where each FAQ item is a discrete box with a 1px border. 
- The toggle icon (plus/minus) should be the Vibrant Orange color to draw the eye to the interaction.

### Chips & Tags
- Rectangular with minimal rounding (2px). Use the Steel Gray for technical categories and the Orange for "New" or "Urgent" statuses.