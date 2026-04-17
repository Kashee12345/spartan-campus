# 🏫 Spartan Campus
**Interactive educational game hub for USC Upstate — built with vanilla HTML5/JS, no dependencies.**

Live site → [kashee12345.github.io/spartan-campus](https://kashee12345.github.io/spartan-campus)

---

## What is this?

A fully playable virtual USC Upstate campus. Walk your character around the map, enter any of the 14 buildings, read real department info and faculty, and launch subject-specific educational games tied to real catalog courses.

A school bus on campus transports you to a connected **K-12 campus** with games built for elementary students.

---

## Repo Structure

```
spartan-campus/
│
├── index.html                  ← USC Upstate campus hub (main map)
├── k12-campus.html             ← K-12 campus hub (coming soon)
│
├── games/                      ← USC Upstate course games
│   ├── AnatomyQuest1_USC_FINAL.html        BIOL U243 — A&P I
│   ├── PathoQuest_BIO280_USC_FINAL.html    BIOL U250 — Microbiology
│   └── MedicalMystery_FinalBetaA.html      NURS — Medical Mystery
│
├── k12/                        ← Elementary / middle school games
│   ├── FractionQuest.html
│   ├── PlaceValueQuest.html
│   ├── ShapeQuest.html
│   └── StoryQuest.html
│
├── tools/
│   └── course-tracker.html     ← Dev dashboard: all courses, game coverage
│
└── _wip/                       ← Work in progress (not linked from campus)
```

---

## Course Coverage

| Department | Courses | Games Built | Status |
|------------|--------:|:-----------:|--------|
| BIOL — Biology | 12 | 5 | 🟡 In progress |
| CHEM — Chemistry | 6 | 0 | 🔴 Needed |
| PHYS — Physics | 5 | 0 | 🔴 Needed |
| MATH — Mathematics | 14 | 0 | 🔴 Needed |
| CSCI — Computer Science | 6 | 0 | 🔴 Needed |
| ENGL — English | 12 | 0 | 🔴 Needed |
| THEA — Theatre | 3 | 0 | 🔴 Needed |
| MUSC — Music | 8 | 0 | 🔴 Needed |
| SPCH — Speech | 2 | 0 | 🔴 Needed |
| PSYC — Psychology | 2 | 1 | 🟡 In progress |
| SOCY — Sociology | 2 | 0 | 🔴 Needed |
| CRJU — Criminal Justice | 5 | 0 | 🔴 Needed |
| HIST — History | 5 | 0 | 🔴 Needed |
| POLI — Political Science | 2 | 0 | 🔴 Needed |
| PHIL — Philosophy | 3 | 0 | 🔴 Needed |
| SPAN — Spanish | 7 | 0 | 🔴 Needed |
| AFAM — African American Studies | 2 | 0 | 🔴 Needed |
| ARTS — Art Studio | 14 | 0 | 🔴 Needed |
| NURS — Nursing | 1 | 1 | 🟡 In progress |
| EXSC — Exercise Science | 5 | 0 | 🔴 Needed |
| UNIV — University Experience | 7 | 0 | 🔴 Needed |

Full interactive tracker → `tools/course-tracker.html`

---

## How to Add a New Game

1. Build the game as a single self-contained HTML file
2. Name it: `[DEPT]-[CourseNum]-[ShortName].html` (e.g. `MATH-U141-Calculus.html`)
3. Drop it into `games/`
4. Open `index.html`, find the course entry in `BLD_INT`, update `file:'your-file.html'` and `soon:false`
5. Update the tracker table above

---

## Campus Buildings

| Building | Departments |
|----------|-------------|
| Stockwell Admin | Chancellor · Provost · IT · UNIV |
| Smith Science | BIOL · CHEM · PHYS |
| Hodge Center | MATH · CSCI · Basketball |
| HPAC | ENGL · THEA · MUSC · SPCH |
| Arts & Sciences | PSYC · SOCY · CRJU |
| Media Center | HIST · POLI · PHIL · WRET-TV |
| Burroughs | SPAN · AFAM · International Studies |
| Hicks Visual Arts | ARTS |
| Johnson Library | Research · Archives |
| Sansbury Life Center | Dining · Student Life · Counseling |
| Rampey Center | Health · Testing · Career Services |
| Readiness Center | EXSC · Education · ROTC |
| Health Education Complex | NURS · Aquatic Center |
| Public Safety | Campus Police |

---

## Tech Stack

- Pure HTML5 + Canvas + vanilla JavaScript — zero frameworks, zero dependencies
- All assets embedded (base64) — each game file is fully self-contained
- GitHub Pages for hosting — no build step, no server required

---

## Related

- [Herzing BodyQuest](https://github.com/Kashee12345/herzing-bodyquest) — original anatomy game (separate project)
