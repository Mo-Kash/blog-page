import 'article_model.dart';

class StoredArticles {
  static final List<ArticleModel> articles = [
    ArticleModel(
      title: "✨ Decoding the Cosmic Blueprint: How Zodiac Signs Are Calculated in Vedic Astrology",
      date: "16 May, 2025.",
      author: "Hemant Singh",
      readTime: "8 min read",
      mainImagePath: "assets/images/astrology_pic1.jpg",
      preview: "This article explains, in technical and metaphysical depth, how your zodiac sign is calculated using your birth data, and why it holds tremendous significance in Vedic astrology.",
      tags: ["MoonSign", "Rashi", "AstrologySoftware"],
      sections: [
        ArticleSection(
          heading: "Introduction",
          paragraphs: [
            TextBlock(lines: [
              "In the age of algorithms and artificial intelligence, it might seem counterintuitive to turn to the stars for answers.",
              "Yet, the ancient science of Vedic astrology (or Jyotish Shastra) continues to remain relevant — not as a superstition, but as a deeply structured and mathematically precise system that aligns our lives with the rhythms of the cosmos.",
              "As a developer fascinated by logical systems, diving into Vedic astrology revealed a framework more exact and intricate than most people realize.",
            ]),
            TextBlock(lines: [
              "At the heart of this system lies your Moon sign — a subtle, yet profound fingerprint of your emotional nature and karmic blueprint.",
              "This article explains, in technical and metaphysical depth, how your zodiac sign is calculated using your birth data, and why it holds tremendous significance in Vedic astrology."
            ]),
          ],
        ),
        ArticleSection(
          heading: "🌐 Western vs. Vedic Astrology: A Brief Primer",
          paragraphs: [
            TextBlock(lines: [
              "Most of us are familiar with the concept of a \"zodiac sign\" through Western astrology, which emphasizes your Sun sign — the position of the Sun at the time of your birth.",
              "Vedic astrology, however, places greater importance on the Moon sign (Rashi). Why?",
              "The Moon changes signs every 2.25 days, whereas the Sun stays in a sign for ~30 days. Hence, the Moon gives a more personal and time-specific read. Your mind, emotions, instincts, and memory are governed by the Moon in Vedic thought.",
              "All major prediction systems (like Dasha and Gochar) are calculated from the Moon's position."
            ]),
          ],
        ),
        ArticleSection(
          heading: "🔢 The Mathematical Core: What Data Is Needed?",
          paragraphs: [
            TextBlock(lines: [
              "To calculate your Moon sign, the following inputs are essential:",
              "• Date of Birth: Determines the planetary snapshot of your day of birth.",
              "• Exact Time of Birth: Precision is crucial. Even a 4-minute difference can change your Ascendant.",
              "• Place of Birth: Used to compute local sidereal time and longitudinal offset.",
              "With these three, the astrologer (or modern software) computes a sidereal chart (‘Lagna Kundli’) that includes planetary longitudes, house placements, and nakshatras."
            ]),
          ],
        ),
        ArticleSection(
          heading: "🔬 Step-by-Step: How Your Zodiac (Moon Sign) Is Calculated",
          paragraphs: [
            TextBlock(lines: [
              "1. Astronomical Data Extraction",
              "Using a Vedic ephemeris, the astrologer determines the geocentric longitude of the Moon in tropical coordinates at your time and location of birth. This value is based on real-time astronomical calculations.",
              "Mathematically:\nTropical Longitude = Ephemeris value of Moon on DOB"
            ]),
            TextBlock(lines: [
              "2. Ayanamsa Correction",
              "The sidereal zodiac used in Vedic astrology requires an adjustment called Ayanamsa — which accounts for the precession of the equinoxes.",
              "Formula:\nSidereal Longitude = Tropical Longitude - Ayanamsa",
              "Example: If Tropical Moon = 240.2° and Ayanamsa = 23.9°, then: Sidereal Moon = 240.2° - 23.9° = 216.3°"
            ]),
            TextBlock(lines: [
              "3. Sign Placement",
              "Once the sidereal longitude is known, divide the 360° circle of the zodiac into twelve 30° segments. The segment in which the Moon falls determines your Rashi:",
              "Moon Sign Index = floor(Sidereal Longitude / 30)",
              "In our example: floor(216.3 / 30) = 7 → 8th sign = Scorpio"
            ]),
            TextBlock(lines: [
              "4. Nakshatra Calculation",
              "Each Nakshatra is 13°20' long, or 13.333...°",
              "To calculate Nakshatra:\nNakshatra Index = floor(Sidereal Longitude / 13.333...)\nIn our example: floor(216.3 / 13.333...) = 16 → 17th Nakshatra = Anuradha",
              "Thus, your Moon sign and Nakshatra are obtained from clean mathematical slicing of the 360° ecliptic using sidereal astronomy."
            ]),
          ],
        ),
        ArticleSection(
          heading: "📊 Degree Ranges and Zodiac Signs",
          paragraphs: [
            TextBlock(lines: [
              "Each zodiac sign spans 30° of the celestial ecliptic. Here's a breakdown:",
              "• Aries: 0°00' – 29°59'\n"
                  "• Taurus: 30°00' – 59°59'\n"
                  "• Gemini: 60°00' – 89°59'\n"
                  "• Cancer: 90°00' – 119°59'\n",
              "• Leo: 120°00' – 149°59'\n"
                  "• Virgo: 150°00' – 179°59'\n"
                  "• Libra: 180°00' – 209°59'\n"
                  "• Scorpio: 210°00' – 239°59'\n",
              "• Sagittarius: 240°00' – 269°59'\n"
                  "• Capricorn: 270°00' – 299°59'\n"
                  "• Aquarius: 300°00' – 329°59'\n"
                  "• Pisces: 330°00' – 359°59'\n",
              "Whichever 30° sector the Moon falls into becomes your Moon sign or Rashi."
            ]),
          ],
        ),
        ArticleSection(
          heading: "🌟 Nakshatra Analysis",
          paragraphs: [
            TextBlock(lines: [
              "Each sign contains 2.25 Nakshatras, totaling 27 across the zodiac. They divide the 360° ecliptic into 13°20' segments.",
              "Each Nakshatra adds another layer of precision in personality profiling, life purpose, and karmic tendencies."
            ]),
          ],
        ),
        ArticleSection(
          heading: "🔍 Why Moon Sign Is So Significant",
          paragraphs: [
            TextBlock(lines: [
              "While the Sun sign speaks to your outer identity, the Moon sign reveals your inner world:",
              "• Emotional Intelligence: How you process feelings and navigate relationships.",
              "• Mental Stability: The Moon determines your reaction patterns, intuition, and memory.",
              "• Spiritual Blueprint: The Moon sign, along with its Nakshatra, reveals your soul’s tendencies from past lives and your psychological karma in this life.",
              "• Predictive Systems: The Mahadasha system (planetary periods) and transits (Gochar) are all calculated from the Moon's position."
            ]),
          ],
        ),
        ArticleSection(
          heading: "⚖️ Accuracy and Scientific Rigor",
          paragraphs: [
            TextBlock(lines: [
              "Modern Vedic astrologers often use software like:",
              "• Jagannatha Hora (free desktop software)",
              "• Drik Panchang (online Kundli and Panchang)",
              "• AstroSage / Parashara Light (popular mobile apps)",
              "These tools use NASA-grade ephemeris data, adjusted with Ayanamsa, making the calculations astronomically valid.",
              "Further, Vedic astrology's Ganita Siddhanta (Mathematics of Astrology) is based on ancient Indian trigonometry, spherical geometry, and time zone logic."
            ]),
          ],
        ),
        ArticleSection(
          heading: "🎓 Case Study: A Developer's Zodiac Calculation",
          paragraphs: [
            TextBlock(lines: [
              "Let’s say I was born:",
              "• On: 15 May 1995",
              "• At: 10:42 AM IST",
              "• In: Delhi, India",
              "The software tells me:\nMoon was at Taurus 15° 10'” (sidereal)",
              "This falls within 30° to 60° of the zodiac → Taurus (Vrishabha Rashi).",
              "Nakshatra: Rohini (associated with creativity, passion, and fertility)",
              "So, my emotional blueprint is ruled by Venus (lord of Taurus) and aligned to Rohini — making me naturally expressive, artistic, and stability-seeking."
            ]),
          ],
        ),
        ArticleSection(
          heading: "✨ Practical Applications of Knowing Your Moon Sign",
          paragraphs: [
            TextBlock(lines: [
              "1. Career Counseling\nMoon in Capricorn? You might thrive in systems, engineering, or public administration.",
              "2. Relationship Compatibility\nMoon sign matching (“Rashi Milan”) is a must in traditional Hindu marriages. Nakshatra compatibility (Ashtakoota) refines it further.",
              "3. Emotional Self-Awareness\nKnowing your Moon sign gives clarity on how you respond under stress, form attachments, and process pain or joy.",
              "4. Timing of Events (Muhurta)\nAuspicious timings for marriage, housewarming, business launches, and more are chosen based on your Moon sign and its current transit.",
              "5. Remedial Measures\nGemstones, mantras, fasting, or specific donations (daan) are prescribed based on the Moon's condition and aspects in your chart."
            ]),
          ],
        ),
      ],
      conclusion: ArticleConclusion(
        title: "🌌 Final Thoughts: A Cosmic Operating System",
        points: [
          "For the logically inclined, Vedic astrology is not mysticism — it's a cosmic operating system, where the Moon sign is your default emotional kernel. Understanding your Rashi is like understanding your mind's source code.",
          "As developers, we debug systems. As seekers, we must debug ourselves.",
          "So next time someone asks, \"What's your sign?\" — go deeper. Ask: What's your Rashi?",
          "Because in the Vedic system, the Moon knows who you really are."
        ],
      ),
    ),

    ArticleModel(
      title: "How Panchang is Calculated ⭐",
      date: "19 May, 2025",
      author: "Hemant Singh",
      readTime: "7 min",
      mainImagePath: "assets/images/astrology_pic2.jpg",
      preview: "Panchang is the intricate Vedic calendar system composed of five cosmic elements—Tithi, Vara, Nakshatra, Yoga, and Karana—each calculated using precise astronomical methods. This article breaks down the formulas, definitions, and cyclical structures that form the bedrock of daily guidance in Vedic astrology.",
      tags: ["Vedic Astrology", "Spiritual Science"],
      sections: [
        ArticleSection(
          heading: "📘 Introduction",
          paragraphs: [
            TextBlock(lines: [
              "Panchang is the Vedic calendar, a sophisticated temporal framework that mathematically encodes the cosmic environment for any given day. ",
              "Its five limbs-Tithi, Vara, Nakshatra, Yoga, and Karana-are calculated using precise astronomical algorithms and serve as the foundation for daily guidance in Vedic astrology.",
            ]),
          ],
        ),

        ArticleSection(
          heading: "Definitions and Technical Calculations",
          paragraphs: [],
        ),

        ArticleSection(
            heading: "🌓 Tithi (Lunar Day)",
            paragraphs: [
              TextBlock(lines: [
                "Tithi represents the angular distance between the Moon and the Sun, increasing by 12° per Tithi.",
                "Formula:\nTithi = (Moon’s Longitude − Sun’s Longitude) / 12",
                "There are 30 Tithis in a lunar month — 15 in the waxing phase (Shukla Paksha) and 15 in the waning phase (Krishna Paksha)."
              ]),
              TextBlock(lines: [
                "Each Tithi holds specific spiritual and practical significance, influencing activities like fasting, rituals, and decision-making."
              ])
            ]
        ),

        ArticleSection(
          heading: "📅 Vara (Weekday)",
          paragraphs: [
            TextBlock(lines: [
              "Seven weekdays, each ruled by a planet (e.g., Sunday by Sun, Monday by Moon).",
              "Astronomically, a Vara is measured from one sunrise to the next, aligning with planetary cycles.",
            ]),
          ],
        ),

        ArticleSection(
          heading: "🌌 Nakshatra (Lunar Mansion)",
          paragraphs: [
            TextBlock(lines: [
              "The ecliptic is divided into 27 Nakshatras, each measuring 13°20' (or 13.333...°).",
              "Formula:\nNakshatra Number = Moon’s Longitude / 13.333",
              "The Nakshatra in which the Moon resides at any moment determines key energetic qualities for that period."
            ]),
          ],
        ),

        ArticleSection(
          heading: "🧮 Yoga (Auspicious Combination)",
          paragraphs: [
            TextBlock(lines: [
              "Calculated by adding the longitudes of Sun and Moon, then dividing by 13°20'.",
              "Formula:\nYoga = (Sun’s Longitude + Moon’s Longitude) / 13.333",
              "There are 27 Yogas, each imparting a distinct cosmic influence."
            ]),
          ],
        ),

        ArticleSection(
          heading: "🌓 Karana (Half Tithi)",
          paragraphs: [
            TextBlock(lines: [
              "Each Tithi is split into two Karanas (~6 hours each).",
              "There are 11 Karanas, which repeat in a specific sequence through the lunar month."
            ]),
          ],
        ),

        ArticleSection(
          heading: "1. Tithi (Lunar Day)",
          paragraphs: [
            TextBlock(lines: [
              "There are 30 Tithis in a lunar month, divided into two Pakshas (fortnights):",
            ]),
            TextBlock(lines: [
              "Shukla Paksha (Waxing Moon): ",
              "1.Pratipada",
              "2.Dwitiya",
              "3.Tritiya",
              "5.Panchami",
              "6.Shashthi",
              "7.Saptami",
              "8.Ashtami",
              "9.Navami",
              "10.Dashami",
              "11.Ekadashi",
              "12.Dwadashi",
              "13.Trayodashi",
              "14.Chaturdashi",
              "15.Purnima (Full Moon)"
            ]),
            TextBlock(lines: [
              "Krishna Paksha (Waning Moon)",
              "16.Pratipada",
              "17.Dwitiya",
              "18.Tritiya",
              "19.Chaturthi",
              "20.Panchami",
              "21.Shashthi",
              "22.Saptami",
              "23.Ashtami",
              "24.Navami",
              "25.Dashami",
              "26.Ekadashi",
              "27.Dwadashi",
              "28.Trayodashi",
              "29.Chaturdashi",
              "30.Amavasya (New Moon)"
            ])
          ],
        ),

        ArticleSection(
          heading: "2. Vara (Weekday)",
          paragraphs: [
            TextBlock(lines: [
              "There are 7 Varas, each ruled by a planet:",
            ]),
            TextBlock(lines: [
              "1.Ravivara (Sunday) – Sun (Surya)",
              "2.Somavara (Monday) – Moon (Chandra)",
              "3.Mangalavara (Tuesday) – Mars (Mangala)",
              "4.Budhavara (Wednesday) – Mercury (Budha)",
              "5.Guruvara (Thursday) – Jupiter (Guru)",
              "6.Shukravara (Friday) – Venus (Shukra)",
              "7.Shanivara (Saturday) – Saturn (Shani)",
            ]),
          ],
        ),

        ArticleSection(
          heading: "3. Nakshatra (Lunar Mansion)",
          paragraphs: [
            TextBlock(lines: [
              "There are 27 Nakshatras:",
            ]),
            TextBlock(lines: [
              "1.Ashwini",
              "2.Bharani",
              "3.Krittika",
              "4.Rohini",
              "5.Mrigashira",
              "6.Ardra",
              "7.Punarvasu",
              "8.Pushya",
              "9.Ashlesha",
              "10.Magha",
              "11.Purva Phalguni",
              "12.Uttara Phalguni",
              "13.Hasta",
              "14.Chitra",
              "15.Swati",
              "16.Vishakha",
              "17.Anuradha",
              "18.Jyeshtha",
              "19.Mula",
              "20.Purva Ashadha",
              "21.Uttara Ashadha",
              "22.Shravana",
              "23.Dhanishta",
              "24.Shatabhisha",
              "25.Purva Bhadrapada",
              "26.Uttara Bhadrapada",
              "27.Revati"
            ]),
          ],
        ),

        ArticleSection(
          heading: "4. Yoga (Auspicious Combination)",
          paragraphs: [
            TextBlock(lines: [
              "There are 27 Yogas:",
            ]),
            TextBlock(lines: [
              "1.Vishkambha",
              "2.Priti",
              "3.Ayushman",
              "4.Saubhagya",
              "5.Shobhana",
              "6.Atiganda",
              "7.Sukarman",
              "8.Dhriti",
              "9.Shoola",
              "10.Ganda",
              "11.Vriddhi",
              "12.Dhruva",
              "13.Vyaghata",
              "14.Harshana",
              "15.Vajra",
              "16.Siddhi",
              "17.Vyatipata",
              "18.Variyana",
              "19.Parigha",
              "20.Shiva",
              "21.Siddha",
              "22.Sadhya",
              "23.Shubha",
              "24.Shukla",
              "25.Brahma",
              "26.Indra",
              "27.Vaidhriti"
            ]),
          ],
        ),

        ArticleSection(
          heading: "5. Karana (Half Tithi)",
          paragraphs: [
            TextBlock(lines: [
              "There are 11 Karanas (4 Fixed, 7 Repeating):",
            ]),
            TextBlock(lines: [
              "Fixed Karanas (occur once each in a month):",
            ]),
            TextBlock(lines: [
              "1.Shakuni",
              "2.Chatushpada",
              "3.Naga",
              "4.Kimstughna"
            ]),
            TextBlock(lines: [
              "Repeating Karanas (occur 8 times each in a lunar month):",
            ]),
            TextBlock(lines: [
              "5.Bava",
              "6.Balava",
              "7.Kaulava",
              "8.Taitila",
              "9.Garaja",
              "10.Vanija",
              "11.Vishti (Bhadra)"
            ]),
          ],
        ),

        ArticleSection(
            heading: "Panchang and Hora Technical Foundations", 
            paragraphs: [
              TableBlock(
                  headers: ["Concept", "Definition and Calculation", "Method", "Application"],
                  rows: [
                    ["Tithi", "Lunar day (12° Sun-Moon separation)", "(Moon's Longitude - Sun's Longitude) / 12", "Daily rhythm, rituals"],
                    ["Vara", "Weekday, planetary ruler", "Sunrise-to-sunrise cycle", "Activity alignment"],
                    ["Nakshatra", "27 lunar mansions (13°20' each)", "Moon's Longitude / 13.333", "Auspicious timing, personality"],
                    ["Yoga", "Sun+Moon longitude sum", "(Sun's + Moon's Longitude) / 13.333", "Event quality"],
                    ["Karana", "Half Tithi (~6 hours)", "Each Tithi = 2 Karanas", "Micro-timing"],
                    ["Hora", "Planetary hour", "Day/night divided into 12 each, assigned by planetary order", "Hourly optimization"],
                  ]
              )
            ]
        )
      ],
      conclusion: ArticleConclusion(
        title: "",
        points: [],
      ),
    ),

    ArticleModel(
        title: "Zodiac Sign Calculation: The Sidereal Blueprint♒",
        date: "19 May, 2025",
        author: "Hemant Singh",
        readTime: "10 min",
        mainImagePath: "assets/images/astrology_pic3.jpg",
        preview: "This article explains how Vedic astrology calculates the Moon sign and Nakshatra using astronomical data, Ayanamsa corrections, and sidereal zodiac principles.",
        tags: ["Vedic Astrology", "Moon Sign Calculation"],
        sections: [
          ArticleSection(
            heading: "📘 Introduction",
            paragraphs: [
              TextBlock(lines: [
                "Unlike Western astrology’s Sun-centric, tropical system, Vedic astrology uses a sidereal zodiac anchored to the fixed stars.",
                "The Moon sign (Rashi) is central, reflecting the mind, emotions, and karmic tendencies.",
              ]),
            ],
          ),

          ArticleSection(
            heading: "Prerequisites for Calculation",
            paragraphs: [
              TextBlock(lines: [
                "Birth Data: Exact date, time, and location are critical; even a 4-minute error can shift the Ascendant and house placements.",
                "Geographic Coordinates: Used to compute local sidereal time and planetary positions.",
              ]),
            ],
          ),

          ArticleSection(
            heading: "Step-by-Step Calculation",
            paragraphs: [
              TextBlock(lines: [
                "Astronomical Data Extraction:",
                "The Moon’s geocentric longitude is determined using ephemeris data, adjusted for the observer’s location and time.",
                "Conversion of local time to Universal Time ensures global consistency9.",
              ]),
              TextBlock(lines: [
                "Ayanamsa Correction:",
                "The sidereal zodiac requires adjustment for the precession of the equinoxes (Ayanamsa).",
                "Formula:",
                "Sidereal Longitude = Tropical Longitude − Ayanamsa",
                "The Lahiri Ayanamsa is the most widely used standard.",
              ]),
              TextBlock(lines: [
                "Sign Placement:",
                "The 360° zodiac is divided into twelve 30° segments.",
                "Formula:",
                "Moon Sign Index = floor(Sidereal Longitude / 30)",
                "Each segment corresponds to a zodiac sign, with degree tables mapping the ranges.",
              ]),
              TextBlock(lines: [
                "Nakshatra and Pada Calculation:",
                "The 360° ecliptic is further divided into 27 Nakshatras (13°20' each).",
                "Formula:",
                "Nakshatra Index = floor(Sidereal Longitude / 13.333...)",
                "Each Nakshatra is subdivided into four Padas (quarters), each spanning 3°20'.",
              ]),
            ],
          ),

          ArticleSection(
            heading: "Significance of each zodiac sign",
            paragraphs: [
              TextBlock(lines: [
                "Aries (Mesha)",
                "Significance: Aries is fiery, dynamic, and symbolizes the beginning of the zodiac. It represents courage, initiative, leadership, and a pioneering spirit. People with Aries strong in their chart are adventurous, energetic, and assertive.",
                "Planetary Lord: Mars (Mangal)",
              ]),
              TextBlock(lines: [
                "Taurus (Vrishabha)",
                "Significance: Taurus stands for stability, determination, and the earthy qualities of the Bull. It is associated with material wealth, perseverance, sensuality, and a strong connection to possessions and comfort.",
                "Planetary Lord: Venus (Shukra)",
              ]),
              TextBlock(lines: [
                "Gemini (Mithuna)",
                "Significance: Gemini is about duality, communication, intellect, and adaptability. It represents curiosity, versatility, and the exchange of ideas. Geminis are quick-witted, social, and flexible.",
                "Planetary Lord: Mercury (Budha)",
              ]),
              TextBlock(lines: [
                "Cancer (Karka)",
                "Significance: Cancer is nurturing, intuitive, and emotional, symbolized by the Crab. It is associated with home, family, sensitivity, and strong protective instincts. Cancerians are caring, empathetic, and deeply connected to their roots.",
                "Planetary Lord: Moon (Chandra)",
              ]),
              TextBlock(lines: [
                "Leo (Simha)",
                "Significance: Leo is regal, creative, and confident, symbolized by the Lion. It represents leadership, self-expression, vitality, and a desire for recognition. Leos are generous, charismatic, and authoritative.",
                "Planetary Lord: Sun (Surya)",
              ]),
              TextBlock(lines: [
                "Virgo (Kanya)",
                "Significance: Virgo is analytical, practical, and detail-oriented. It stands for service, health, organization, and critical thinking. Virgos are methodical, intelligent, and perfectionistic.",
                "Planetary Lord: Mercury (Budha)",
              ]),
              TextBlock(lines: [
                "Libra (Tula)",
                "Significance: Libra is about balance, harmony, and relationships. It is diplomatic, fair-minded, and values aesthetics and partnership. Librans strive for peace, justice, and social connections.",
                "Planetary Lord: Venus (Shukra)",
              ]),
              TextBlock(lines: [
                "Scorpio (Vrishchika)",
                "Significance: Scorpio is intense, passionate, and transformative. It represents depth, secrecy, power, and emotional strength. Scorpios are determined, resourceful, and magnetic.",
                "Planetary Lord: Mars (Mangal)",
              ]),
              TextBlock(lines: [
                "Sagittarius (Dhanu)",
                "Significance: Sagittarius is philosophical, optimistic, and adventurous. It stands for wisdom, spirituality, exploration, and the quest for truth. Sagittarians are open-minded, enthusiastic, and freedom-loving.",
                "Planetary Lord: Jupiter (Guru)",
              ]),
              TextBlock(lines: [
                "Capricorn (Makara)",
                "Significance: Capricorn is disciplined, ambitious, and practical. It represents responsibility, perseverance, structure, and long-term goals. Capricorns are hardworking, reliable, and authoritative.",
                "Planetary Lord: Saturn (Shani)",
              ]),
              TextBlock(lines: [
                "Aquarius (Kumbha)",
                "Significance: Aquarius is innovative, humanitarian, and independent. It stands for originality, progressiveness, social causes, and unconventional thinking. Aquarians are visionary, intellectual, and friendly.",
                "Planetary Lord: Saturn (Shani)",
              ]),
              TextBlock(lines: [
                "Pisces (Meena)",
                "Significance: Pisces is compassionate, imaginative, and spiritual. It represents empathy, intuition, artistic talent, and a deep connection to the collective unconscious. Pisceans are gentle, dreamy, and selfless.",
                "Planetary Lord: Jupiter (Guru)",
              ]),
            ],
          )
        ],
        conclusion: ArticleConclusion(
            title: "Significance",
            points: [
              "The Moon sign and Nakshatra form the core of Vedic astrological analysis, influencing Dasha (planetary period) systems, emotional patterns, and life’s karmic trajectory.",
              "Modern Computational Methods",
              "Professional software and online tools automate these calculations, ensuring accuracy by integrating ephemeris data, Ayanamsa corrections, and time zone adjustments.",
            ]
        )
    ),

    ArticleModel(
        title: "For Daily Prediction ✨",
        date: "19 May, 2025",
        author: "Hemant Singh",
        readTime: "10 min",
        mainImagePath: "assets/images/astrology_pic4.jpg",
        preview: "Tools and methods in Vedic astrology used to generate and interpret personalized birth charts and daily guidance.",
        tags: ["Astrology", "Computation"],
        sections: [
          ArticleSection(
            heading: "🪐 Vedic Astrology Computation System",
              paragraphs: [
                TextBlock(lines: [
                  "1. Birth Chart Generation",
                  "Definition: The birth chart (Kundali) is a precise astronomical map of planetary positions at the moment and location of birth.",
                  "Technical Method: Using birth date, time, and place, software calculates planetary longitudes, Ascendant (Lagna), and house divisions based on sidereal astronomy. The chart includes planetary degrees, Nakshatras, and Dasha periods.",
                ]),
                TextBlock(lines: [
                  "2. Constellation Analysis",
                  "Definition: Examines which Nakshatra moon planet occupies.",
                  "Technical Process: The Moon’s sidereal longitude is divided by 13.333 to determine Nakshatra; each planet’s placement is similarly mapped, creating a unique energetic signature.",
                ]),
                TextBlock(lines: [
                  "3. Navtara Analysis",
                  "Definition: The Navtara Chakra divides the 27 Nakshatras into nine groups (Taras) from the Moon’s birth Nakshatra.",
                ]),
                ]),
                ArticleSection(
                  heading: "How to Interpret the Navtara Chakra in Your Birth Chart",
                  paragraphs: [
                    TextBlock(lines: [
                      "The Navtara Chakra is a powerful tool in Vedic astrology that divides the 27 Nakshatras (lunar mansions) into nine groups of three, starting from your Janma Nakshatra (birth star). Each group, or Tara, has a specific meaning and influence on your life, personality, and experiences. Here’s how to interpret it step by step:",
                      "1. Identify Your Janma Nakshatra",
                      "Your Janma Nakshatra is the Nakshatra where your natal Moon is placed at birth.",
                      "This Nakshatra becomes the starting point for the Navtara Chakra calculation.",
                    ]),
                    TextBlock(lines: [
                      "2. Calculate the Navtara Sequence",
                      "Starting from your Janma Nakshatra, count sequentially through the 27 Nakshatras to form nine Taras, each containing three Nakshatras.",
                      "The sequence is cyclical (after the 27th Nakshatra, continue counting from the 1st).",
                    ]),
                  ]
                ),
              ArticleSection(
                  heading: "Navtara Categories and Their Significance",
                  paragraphs: [
                    TableBlock(
                        headers: ["Tara", "Name", "Nakshatra positions (from Janma)", "Key Themes/Interpretation"],
                        rows: [
                          ["1","Janma", "1st, 10th, 19th", "Birth, core self, strong reinforcement of karma/results"],
                          ["2","Sampat", "2nd, 11th, 20th", "Wealth, resources, prosperity"],
                          ["3","Vipat", "3rd, 12th, 21st", "Obstacles, danger, challenges"],
                          ["4","Kshema", "4th, 13th, 22nd", "Well-being, health, happiness, ease"],
                          ["5","Pratyak", "5th, 14th, 23rd", "Opposition, struggle, tests, delays"],
                          ["6","Sadhana", "6th, 15th, 24th", "Achievement, success, progress"],
                          ["7","Naidhana", "7th, 16th, 25th", "Destruction, loss, endings, transformation"],
                          ["8","Mitra", "8th, 17th, 26th", "Friendship, support, alliances"],
                          ["9","Parama Mitra", "9th, 18th, 27th", "Great friendship, well-wishers, highest support"],
                        ]
                    ),
                    TextBlock(lines: [
                      "• Planets: Note which Nakshatra each planet occupies in your birth chart. Assign each to its corresponding Tara group.",
                      "• A planet in Janma Tara will strongly reinforce its promised results (good or bad), while one in Sadhana Tara will support achievements and success.",
                      "• Houses: You can also analyze the Tara for the degree of each house cusp, especially for empty houses, to understand subtle influences on that area of life."
                    ])
                  ]
              ),
              ArticleSection(
                heading: "",
                paragraphs: [
                  TextBlock(lines: [
                    "3. Interpret the Results",
                    "Auspicious Taras: Sampat, Kshema, Sadhana, Mitra, and Parama Mitra are generally supportive. Planets or transits in these Nakshatras bring ease, success, support, and prosperity.",
                    "Challenging Taras: Vipat, Pratyak, Naidhana, and sometimes Janma (depending on the planet and context) can indicate challenges, obstacles, or transformative experiences.",
                    "Nuanced Analysis: The results depend on the planet’s inherent nature and its role in your chart. A malefic planet in a supportive Tara may still give mixed results, but the negative effects may be softened.",
                    "Transit Use: When the Moon or a planet transits through a Tara relative to your Janma Nakshatra, it triggers the themes of that Tara for you during that period.",
                  ]),
                  TextBlock(lines: [
                    "4. Moon’s Current Transit Analysis",
                    "We track the moon's current position and movement, considering its emotional, intuitive, and receptive characteristics.",
                    "Our algorithms compare current lunar positions with natal chart placements.",
                    "This deep analysis connects past planetary influences with present celestial conditions to generate precise daily recommendations based on Vedic principles.",
                  ]),
              ]),
            ArticleSection(
              heading: "Summary Table: Navtara Chakra Themes",
              paragraphs: [
                TableBlock(
                  headers: ["Tara", "Theme/Indication"],
                  rows: [
                    ["Janma", "Core self, karmic reinforcement"],
                    ["Sampat", "Wealth, resources, prosperity"],
                    ["Vipat", "Obstacles, danger, challenges"],
                    ["Kshema", "Well-being, health, happiness"],
                    ["Pratyak", "Opposition, struggle, delays"],
                    ["Sadhana", "Achievement, success"],
                    ["Naidhana", "Destruction, loss, transformation"],
                    ["Mitra", "Friendship, support"],
                    ["Parama Mitra", "Great friendship, highest support"],
                  ],
                )
              ],
            ),
            ArticleSection(
              heading: "",
              paragraphs: [
                TextBlock(lines: [
                  "5. Planetary Relationships (Aspects/Drishti)",
                  "Definition: Aspects (Drishti) are the angular relationships between planets, influencing how they interact.",
                  "Technical Details: Every planet aspects the 7th house from its position; Mars, Jupiter, and Saturn have additional unique aspects.",
                  "These aspects are algorithmically determined and play a crucial role in evaluating planetary strengths, weaknesses, and interactions.",
                ]),
                TextBlock(lines: [
                  "6. Dasha System Calculation",
                  "Definition: Dasha periods are time cycles ruled by different planets, dictating life themes and events.",
                  "We implement the Dasha system (Planetary Period system), a unique feature of Vedic astrology.",
                  "Our algorithms calculate multi-tiered Dasha periods: Maha Dasha (major periods spanning years), Antar Dasha (sub-periods spanning months), Pratyantar Dasha (sub-sub-periods spanning weeks), and Sookshma Dasha (daily periods).",
                  "These temporal cycles provide crucial context for understanding current astrological influences.",
                  "Technical Process: The most common is Vimshottari Dasha (120-year cycle), calculated from the Moon’s Nakshatra at birth. Each Mahadasha is subdivided into Antardasha, Pratyantar Dasha, and Sookshma Dasha for detailed timing2.",
                  "App generates a timeline of planetary periods, each with specific start and end dates.",
                ]),
                TextBlock(lines: [
                  "8. Synthesis for Daily Guidance",
                  "Process: All the above data points Birth Details, transits, Dasha periods, planetary aspects, and Navtara Tara-are integrated by algorithms to produce personalized daily guidance.",
                  "Outcome: This synthesis translates complex cosmic patterns into actionable insights, aligning daily activities with favorable cosmic rhythms.",
                ]),
              ]
          )
        ],
        conclusion: ArticleConclusion(
            title: "",
            points: []
        )
    ),

    ArticleModel(
        title: "Hora: Planetary Hour System 🕑. Using Hora for Hourly Guidance in Vedic Astrology",
        date: "19 May, 2025",
        author: "Hemant Singh",
        readTime: "10 min",
        mainImagePath: "assets/images/astrology_pic5.jpg",
        preview: "Hora divides each day and night into 24 planetary hours, aligning actions with hourly planetary energies for optimized decision-making in daily life.",
        tags: ["Hora", "Astrology Timing"],
        sections: [
          ArticleSection(
              heading: "🕒 Hora: Hourly Planetary Guidance in Vedic Astrology",
              paragraphs: []
          ),
          ArticleSection(
            heading:"Definition",
            paragraphs: [TextBlock(lines: ["Hora is a core Vedic astrology system that divides each day and night into 24 planetary hours, each ruled by a specific planet. This division is not just theoretical-it is a practical timing tool for aligning your actions with the prevailing planetary energies, thus optimizing outcomes for various activities throughout the day.",
            ])]
          ),
          ArticleSection(
            heading: "Why Hora Works for Hourly Guidance",
            paragraphs: [
              TextBlock(lines: [
              "Focused Energy: Each planetary hour channels the specific energy of its ruler, making certain actions more likely to succeed if performed during the matching Hora.",
              "Flexibility: Since Horas shift daily with sunrise and sunset, this method adapts to seasonal and geographic changes.",
              "Accessible: Anyone can use a Hora table or app to plan their day for better outcomes.",
              ])]
          ),
          ArticleSection(
            heading: "Vedic astrology’s daily guidance is rooted in a multi-layered, algorithmic process:",
            paragraphs: [
              TextBlock(lines: [
                "It starts with precise birth chart calculation.",
                "It incorporates advanced techniques like Navtara Chakra, planetary aspects, and Dasha periods.",
                "It tracks real-time planetary transits and assigns planetary rulers to each hour (Hora) for micro-level timing.",
                "The Day Lord for each weekday sets the tone, with the Hora system providing further nuance for every hour.",
              ])]
          ),
          ArticleSection(
            heading:  "How Hora Is Calculated",
            paragraphs: [
              TextBlock(lines: [
                "Daytime (Dina Hora):",
                "The time from sunrise to sunset is divided into 12 equal parts. Each part is a Hora (planetary hour).",
                "Nighttime (Ratri Hora):",
                "The time from sunset to the next sunrise is also divided into 12 equal Horas.",
                "Duration:",
                "The length of each Hora varies with the season and location. In summer, daytime Horas are longer; in winter, night time Horas are longer",
              ]),
            ]
          ),
          ArticleSection(
            heading: "Assigning Planetary Rulers to Each Hora",
            paragraphs: [
            TextBlock(lines: [
              "The first Hora of each day is ruled by the planet that governs that weekday (the Day Lord).",
              "Sunday: Sun",
              "Monday: Moon",
              "Tuesday: Mars",
              "Wednesday: Mercury",
              "Thursday: Jupiter",
              "Friday: Venus",
              "Saturday: Saturn",
              "The sequence for subsequent Horas follows a fixed Chaldean order:",
              "Sun → Venus → Mercury → Moon → Saturn → Jupiter → Mars",
              "(Then repeat the sequence.)",
              "Example:",
              "Want to negotiate a contract? Choose Mercury Hora.",
              "Planning a romantic date? Venus Hora is ideal.",
              "Need to deal with authorities? Use Sun Hora.",
            ]),
            ]
          ),
          ArticleSection(
            heading: "Day Lords: Planetary Rulers of Each Day",
            paragraphs: [
              TableBlock(
                headers: ["Day", "Sanskrit Name", "Planetary Lord", "Key Energies"],
                rows: [
                  ["Sunday", "Ravivara", "Sun (Surya)", "Vitality, leadership, creativity, self-expression"],
                  ["Monday", "Somavara", "Moon (Chandra)", "Emotions, intuition, nurturing, mental well-being"],
                  ["Tuesday", "Mangalavara", "Mars (Mangal)", "Courage, action, strength, determination"],
                  ["Wednesday", "Budhavara", "Mercury (Budh)", "Communication, intelligence, adaptability"],
                  ["Thursday", "Guruvara", "Jupiter (Guru)", "Wisdom, spirituality, knowledge, prosperity"],
                  ["Friday", "Shukravara", "Venus (Shukra)", "Love, beauty, harmony, luxury"],
                  ["Saturday", "Shanivara", "Saturn (Shani)", "Discipline, responsibility, hard work, karma"],
                ],
              )
            ],
          ),
          ArticleSection(
              heading: "Technical Application",
              paragraphs: [
                TextBlock(lines: [
                  "Technical Application",
                  "Activity Optimization: Each Hora is suited for specific tasks based on the ruling planet’s qualities (e.g., Sun Hora for leadership, Moon Hora for nurturing).",
                  "Algorithmic Calculation: Modern apps use sunrise/sunset data and Chaldean order to assign planetary rulers to each segment, starting with the Day Lord.",
                ]),
                TextBlock(lines: [
                  "This structured methodology ensures that every aspect of time is mapped, analyzed, and aligned with cosmic principles for optimal living and decision-making.",
                ]),
                TextBlock(lines: [
                  "1. Constructing a Hora Table",
                  "Look up your local sunrise and sunset times.",
                  "Divide the day and night into 12 equal segments each.",
                  "Assign planetary rulers as per the sequence, starting with the Day Lord for the first Hora after sunrise.",
                ]),
                TextBlock(lines: [
                  "2. Personalized Use",
                  "For even more precision, match the Hora not just to the activity, but also to your own birth chart (e.g., avoid Mars Hora if Mars is weak or afflicted in your chart).",
                  "Some advanced practitioners also consider the Hora Lagna (the Ascendant at the start of a Hora) for micro-level timing3.",
                ]),
              ]
          )
        ],
        conclusion: ArticleConclusion(title: "Summary", points: [
          "Hora provides a structured, algorithmic approach to hourly guidance in Vedic astrology. By aligning your actions with the ruling planet of each hour, you can maximize the effectiveness of your efforts-whether in career, relationships, finances, or personal well-being. This system transforms each day into a sequence of energetic windows, each suited for specific types of activities, and is a practical way to bring Vedic astrology into your daily routine",
        ])
    )
  ];
}