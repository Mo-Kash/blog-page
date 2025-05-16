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
      tags: ["MoonSign","Rashi","AstrologySoftware"],
      sections: [
        ArticleSection(
          heading: "Introduction",
          paragraphs: [
            ParagraphBlock(lines: [
              "In the age of algorithms and artificial intelligence, it might seem counterintuitive to turn to the stars for answers. ",
              "Yet, the ancient science of Vedic astrology (or Jyotish Shastra) continues to remain relevant — not as a superstition, but as a deeply structured and mathematically precise system that aligns our lives with the rhythms of the cosmos. ",
              "As a developer fascinated by logical systems, diving into Vedic astrology revealed a framework more exact and intricate than most people realize.",
            ]),
            ParagraphBlock(lines: [
              "At the heart of this system lies your Moon sign — a subtle, yet profound fingerprint of your emotional nature and karmic blueprint. ",
              "This article explains, in technical and metaphysical depth, how your zodiac sign is calculated using your birth data, and why it holds tremendous significance in Vedic astrology."
            ]),
          ],
        ),
        ArticleSection(
          heading: "🌐 Western vs. Vedic Astrology: A Brief Primer",
          paragraphs: [
            ParagraphBlock(lines: [
              "Most of us are familiar with the concept of a \"zodiac sign\" through Western astrology, which emphasizes your Sun sign — the position of the Sun at the time of your birth. ",
              "Vedic astrology, however, places greater importance on the Moon sign (Rashi). Why?",
              "The Moon changes signs every 2.25 days, whereas the Sun stays in a sign for ~30 days. Hence, the Moon gives a more personal and time-specific read. Your mind, emotions, instincts, and memory are governed by the Moon in Vedic thought.",
              "All major prediction systems (like Dasha and Gochar) are calculated from the Moon's position."
            ]),
          ],
        ),
        // More sections...
        ArticleSection(
          heading: "🔢 The Mathematical Core: What Data Is Needed?",
          paragraphs: [
            ParagraphBlock(lines: [
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
            ParagraphBlock(lines: [
              "1. Astronomical Data Extraction",
              "Using a Vedic ephemeris, the astrologer determines the geocentric longitude of the Moon in tropical coordinates at your time and location of birth. This value is based on real-time astronomical calculations.",
              "Mathematically:\nTropical Longitude = Ephemeris value of Moon on DOB"
            ]),
            ParagraphBlock(lines: [
              "2. Ayanamsa Correction",
              "The sidereal zodiac used in Vedic astrology requires an adjustment called Ayanamsa — which accounts for the precession of the equinoxes.",
              "Formula:\nSidereal Longitude = Tropical Longitude - Ayanamsa",
              "Example: If Tropical Moon = 240.2° and Ayanamsa = 23.9°, then: Sidereal Moon = 240.2° - 23.9° = 216.3°"
            ]),
            ParagraphBlock(lines: [
              "3. Sign Placement",
              "Once the sidereal longitude is known, divide the 360° circle of the zodiac into twelve 30° segments. The segment in which the Moon falls determines your Rashi:",
              "Moon Sign Index = floor(Sidereal Longitude / 30)",
              "In our example: floor(216.3 / 30) = 7 → 8th sign = Scorpio"
            ]),
            ParagraphBlock(lines: [
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
            ParagraphBlock(lines: [
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
            ParagraphBlock(lines: [
              "Each sign contains 2.25 Nakshatras, totaling 27 across the zodiac. They divide the 360° ecliptic into 13°20' segments.",
              "Each Nakshatra adds another layer of precision in personality profiling, life purpose, and karmic tendencies."
            ]),
          ],
        ),

        ArticleSection(
          heading: "🔍 Why Moon Sign Is So Significant",
          paragraphs: [
            ParagraphBlock(lines: [
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
            ParagraphBlock(lines: [
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
            ParagraphBlock(lines: [
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
            ParagraphBlock(lines: [
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

    //add more articles
  ];
}