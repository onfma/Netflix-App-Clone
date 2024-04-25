import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

var box = Hive.box('myList');
var top10roData = Hive.box('top10ro');
var popularMoviesData = Hive.box('popularMovies');
var popularSeriesData = Hive.box('popularSeries');
var originalsData = Hive.box('originals');

// for mobile
// flutter emulators --launch mobile
// flutter run -t lib/main_mobile.dart


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  box = await Hive.openBox('myList');
  top10roData = await Hive.openBox('top10ro');
  popularMoviesData = await Hive.openBox('popularMovies');
  popularSeriesData = await Hive.openBox('popularSeries');
  originalsData = await Hive.openBox('originals');
  
  await box.clear();
  await top10roData.clear();
  await popularMoviesData.clear();
  await popularSeriesData.clear();
  await originalsData.clear();
  
  initializeHives();

  runApp(const MobileApp());
}

void initializeHives() async{

  await top10roData.add({
      "title": "The Rookie",
      "year": "2018",
      "genre": "Drama",
      "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
      "img_link": "https://occ-0-3032-3467.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABS2S_W_msa9jju6ZNt2RG8S9h9lIlT79O26XGMXypIdNe2zw-mle6ee9bJapPL8gVOvRdEZ0sH9pqiQrRqIwM1NWR2XuVAZf_UQ.jpg?r=2dd",
      "description": "A life-changing incident pushes a 45-year-old man to chase his dream of becoming a cop. But he must prove himself to his LAPD superiors to make the cut."
  });
  await top10roData.add({
    "title": "Young Sheldon",
    "year": "2018",
    "genre": "Drama",
    "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    "img_link": "https://occ-0-3032-3467.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABdQIyi8aI7h3Ja96Gaqu1BMZ6UMgQyYtBMV-Ask_5oiUvR8TX1UAf1GEYsIEfPcee6oG-uYXdQ67LtGIC6UTU1C1xeEI_lv0vBA.jpg?r=563",
    "description": "Brilliant yet awkward 9-year-old Sheldon Cooper lands in high school where his smarts leave everyone stumped in this The Big Bang Theory spin-off."
  });
  await top10roData.add({
    "title": "Avatar The Last Airbender",
    "year": "2018",
    "genre": "Drama",
    "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    "img_link": "https://occ-0-3032-3467.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABUcdkx8dBXX3UiscTJZOUWjY6116mTfr9Xnr5gq4IaAXM9wAT7ZJiI54kmUnWe7oDeeYb_mWW-TTmisk7xV7Kak2IpZ18BULU9RmMoKWrplLi1OphlSEdLXUdjuy3PnDMDJf.jpg?r=09b",
    "description": "A young boy known as the Avatar must master the four elemental powers to save a world at war — and fight a ruthless enemy bent on stopping him."
  });
  await top10roData.add({
    "title": "SpongeBob SquarePants",
    "year": "2018",
    "genre": "Drama",
    "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    "img_link": "https://occ-0-3032-3467.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABd_ki3YFu35dh-z7_lfSDOsnXBmAebCGna14LLWInPIYpvi3B_HTnJtfmsb5CcoYd850Doj19PMgN6XmMRYd4U9FrjedtUzOlso.jpg?r=48c",
    "description": "From his pineapple home base under the sea, SpongeBob and his friends, including his meowing pet snail Gary, get into memorable misadventures."
  });
  await top10roData.add({
    "title": "Yellowstone",
    "year": "2018",
    "genre": "Drama",
    "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    "img_link": "https://occ-0-3032-3467.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABY-0fX_U9mIP501v1L1ozQx4zlIe-ggScKCdXmtBgsPOonLVSWBiJTxLtg4lebg1sixE0AhQ5iFcCMnYGnSrOwhmf-8jNak3l8c.jpg?r=fd8",
    "description": "The owner of Montana's largest ranch, John Dutton, defends a vanishing way of life as business interests and politicians scheme to force him out."
  });
  await top10roData.add({
    "title": "House, M.D.",
    "year": "2018",
    "genre": "Drama",
    "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    "img_link": "https://occ-0-3032-3467.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABREWlK6HvIRnZXU-RlNmc1EIFiJntS9fwsiZlSNUp79kBjdo-HK9Nj5_fCWdBqXDIgGheuQ06VXAH1Sjb7SwmTCPzwnFcVV3a0Q.jpg?r=82b",
    "description": "Hugh Laurie stars as Dr. Gregory House, an ornery physician who loathes his patients but is a genius at treating mysterious ailments."
  });
  await top10roData.add({
    "title": "Suits",
    "year": "2018",
    "genre": "Drama",
    "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    "img_link": "https://occ-0-3032-3467.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABVjuYdYgeqvdxPMm6joLqv1Vyq3mMFdTydYHET1kztLpldN5lhE6qxLyO2MOUvW2cMKBqiuEDmp7DkGiTMqozfwKYNxYrruNExo.jpg?r=4ca",
    "description": "After impressing a slick lawyer with his razor-sharp mind, a college dropout scores a coveted associate job, even though he has no legal credentials."
  });
  await top10roData.add({
    "title": "Lucifer",
    "year": "2018",
    "genre": "Drama",
    "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    "img_link": "https://occ-0-3032-3467.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABdzLf-Q3OK2H03_O-TYenAtdtgEP9kHEK4Wov-JlvcJNPMiTwFtyZQ_eJ8yMtVrYzoc6mSbEyFAgqu9z-5P0-htUTbfc1AMpCtffuTkpgSJ_c8nM2GKlmkpcEHqoMsmfAmDY.jpg?r=501",
    "description": "Bored with being the Lord of Hell, the devil relocates to Los Angeles, where he opens a nightclub and forms a connection with a homicide detective."
  });
  await top10roData.add({
    "title": "Queen of Tears",
    "year": "2018",
    "genre": "Drama",
    "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    "img_link": "https://occ-0-3032-3467.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABQB9GRCLQmz9md1hDLmJ_pKyTtx8wc3PAld3z5Z5pWX-anvpjAYe2gTzr9024Yq0SMukMlFPtEXglz9_ClFxECpp680but3wfcTp1OdCl0nLA4z1mLJOrcUm2cdFwxo5hqRxew98D-HihOHaAC46JKMhkYnG_ZmToTyWIpQ0bX26ji1Vw6COKhNN0zbZLqNMokFysQeqD-XjBJ5PH3zTBj5s2-Iakbm0Vv7KV3ssY-_w_uBJK9bJQZ7sqHVFna1iG4xhG5IGe2AeO74ZvFnHxpaO9kmuJP8nPCiYkjPUGYF7rKJqLpvWeixrcMhJtmmDpBrEoiAcyPrt45PGvhFmn3K-IkGMt4khDDVVPDbmV5pBQBrH-TQfP7NizMflIrc7DtKrHgK2Pj8cpqgHfNSCVBlzbyIQXc9gMvdLLIZbKV7-1E-77nvwRpzCn1ycAtE4lsfugpDO.jpg?r=3e4",
    "description": "The queen of department stores and her small-town husband weather a marital crisis —until love miraculously begins to bloom again."
  });
  await top10roData.add({
    "title": "Money Heist",
    "year": "2018",
    "genre": "Drama",
    "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    "img_link": "https://occ-0-3032-3467.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABUmLgKmFrl2Tq5jDmIBIdp-L6_fRFsTE7KslWARHa4Yb8f8q32MOBiACOoYAGFn4k8Pc_1P7QlN-F41Btkx4q8bp2gg0yA4kCWxamkIcyRVtyIoln6PDWQVi1_IAZHe4PALj.jpg?r=326",
    "description": "Eight thieves take hostages and lock themselves in the Royal Mint of Spain as a criminal mastermind manipulates the police to carry out his plan."
  });

  await popularMoviesData.add({
    "title": "Outer Banks",
    "year": "2018",
    "genre": "Drama",
    "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    "img_link": "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABQIUWzFXipnpNQs2Z54AcjtymUj6Cpmkw74MFUT8zsGSKnNGuiRejbBzpjOhKSp6aviaGsMV3eA0aBe-hU-QiOfNs5d_hTUhK6DjANPa4vJfcF2LMmKnYLHo6Y4-i5A6n-nB.jpg?r=648",
    "description": "On an island of haves and have-nots, teen John B enlists his three best friends to hunt for a legendary treasure linked to his father's disappearance."
  });
  await popularMoviesData.add({
    "title": "The Witcher",
    "year": "2018",
    "genre": "Drama",
    "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    "img_link": "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABf5exow7YR19ou4F_Afma6lC9npbAZqCyzMa2cU0HVaz0mmeAQ5CkqLy_e8zNzjbZrbug44-W3LpYw4Ne-eVmcQD6n0VIJAw20tvFpphszMy_p5IiA-vBMtBr2n2BPbxuyml.jpg?r=23e",
    "description": "Geralt of Rivia, a mutated monster-hunter for hire, journeys toward his destiny in a turbulent world where people often prove more wicked than beasts."
  });
  await popularMoviesData.add({
    "title": "Marco Polo",
    "year": "2018",
    "genre": "Drama",
    "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    "img_link": "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABQeHx1u_NyDZGDj9C-DNX-wTL6XPn5E8N6Y9zvVPYJpLvMKQIAAXspMRinUBQjUL2RVvrjleB37zKBnzbSjB2n1Y6jDoA6UJ5CdwlbVmMc1SHq3GlZBRFu3MMaBE4bwYaFbZ.jpg?r=bfa",
    "description": "Set in a world of greed, betrayal, sexual intrigue and rivalry, “Marco Polo” is based on the famed explorer’s adventures in Kublai Khan’s court."
  });
  await popularMoviesData.add({
    "title": "The Tailor",
    "year": "2018",
    "genre": "Drama",
    "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    "img_link": "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABeasl0NjQd5f0zuJSlvSMLgw7U_jlpDu--Yy2jBsfg8HkD7L-yUGR8SeyMJI88YVUmX78iCm4ds47dVoqZUM_JmpHvGfwIEQM70sTJv4-x6o9ygXngeFMEsW0htnI7_PTZkb.jpg?r=f66",
    "description": "A famous tailor begins to sew a wedding dress for his best friend’s fiancée – but all three have dark secrets that will soon upend their lives."
  });
  await popularMoviesData.add({
    "title": "Crooks",
    "year": "2018",
    "genre": "Drama",
    "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    "img_link": "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABak9C7CmYGLf6oEv9WDeBxcmXm8_nrdt0ufCkGZSMutnpXG6vQsSaanD9hhyD-QwTEmPFx1BrjiMV-RRzyRf3tbNfD31prgJ8BMiVNdlop6rxFZy9S2p_zn0LErrHjxn-IrDf_269m4wx2GnnsdMSLGRwneye2NGdvgoABt-4lfJC-mpIqTJCv8vL91NvJwmWkMzLJ8wIADMQ3zWFk-H9oQgacgbNGNYBpTTOdZ2QK0dhpzuiot2o4F2ZusbL0VwkrgZSdkmOxp91JoN2KSoN3V4WIV-nMuoWKDfm6jI-mGEPnw9SEg1mrccIvNXUGTNvop_kqEG7pu-W52gDZWj_-rEUGcMRIt9pXAgQUbABwDdjE10peg.jpg?r=1fc",
    "description": "A priceless coin puts rival gangs across Europe at odds, forcing a retired safecracker to team up with a two-bit gangster for one last heist."
  });
  await popularMoviesData.add({
    "title": "The Crown",
    "year": "2018",
    "genre": "Drama",
    "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    "img_link": "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABaSMGPuPUDfc6l_t-QWv4ZLQ_0gK38ne168mjsP-FUSdnPu6FUCQyyQ0Q4bSstaY55d2cq9kpBQLbOwY3h8YVXnX5cEgxxi09WTq-_JhgKxaFKHMre_IMwad8WYkV1ALTIQV.jpg?r=8c1",
    "description": "Inspired by real events, this fictional dramatization tells the story of Queen Elizabeth II and the political and personal events that shaped her reign."
  });
  await popularMoviesData.add({
    "title": "Stranger Things",
    "year": "2018",
    "genre": "Drama",
    "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    "img_link": "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABc_QuOdHzJa9WwBiBlfEvpcFRKq9TAIgdJv0KoSilQZ8JMEsdCdQS4VGD6gwVg2CYCYNhTJIald5uVsXbMf-3QaF1k1fnFRbovQr6ddWUtkSOUzil_dtlD1wOIeD_pSI6pAx.jpg?r=c68",
    "description": "When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces and one strange little girl."
  });
  await popularMoviesData.add({
    "title": "Orange Is the New Black",
    "year": "2018",
    "genre": "Drama",
    "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    "img_link": "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABfs4Qp0Leur2wjS9jdBW3kTzXCDYS8hXcESFKlCpfsYbfO0DcyGSnquLepLE_q2Evh1vwG7sYEyAj8g3qUQh9bP1vm8RjvpGdBRdhdrvwUs36-2CcKb-j1CSY5AzD_1YGf4v.jpg?r=007",
    "description": "When a past crime catches up with her, a privileged New Yorker ends up in a women's prison, where she quickly makes friends and foes."
  });
  await popularMoviesData.add({
    "title": "Adventure Time",
    "year": "2018",
    "genre": "Drama",
    "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    "img_link": "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABdSme0G66ayKmmjXJiuP2hfl2QcfIQU9RnLFHCiizLqD-Ys-m89SHu4x_1JcTkrRA3LHdTsWSRWP1el7UAJD9d1puNBhjBh9fNQ.jpg?r=7bd",
    "description": "Young Finn and his shape-shifting dog buddy, Jake, go on a series of surreal adventures as they journey through the postapocalyptic Land of Ooo."
  });
  await popularMoviesData.add({
    "title": "Queen of the South",
    "year": "2018",
    "genre": "Drama",
    "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    "img_link": "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABV1oSGE66xJ2WGdghxBnp6DCfvqWEv89JGQx9--334Un3mx4fq6f_K7mf24uW-GeuUS9UN_aIri_kqOyeY1ipTwdip8sfT-DXNU.jpg?r=5d8",
    "description": "Forced to work for a cartel that recently killed her boyfriend, Teresa relies on her street smarts, a loyal friend and a mysterious notebook to survive."
  });

  await popularSeriesData.add({
        "title": "Sex and the City",
        "year": "2018",
        "genre": "Drama",
        "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
        "img_link": "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABef2A81BoW0osJ9ywnjYE1RkGqrUY5QT8w9tXu-pxKz55NRGqZ36Y0gyB9CHk-VmCJ5W_EvM85uflgdDL7B6m4ZBvMl43rZs2zr4aAMXh6sGLWID3afDDY5jFh57nlfYId2PC6L0wJBX0qU4fG4Z9e1LrSIwTKx35sRhPkLfbAThCjSk_l9QaAIieUbQAfjcnTxcSKx4Nf2EFE0ZQNfIFsvJoZ1LAd8KYDA5_9h-0hynUygj24_NKnNcdNdBcht-e9x3gOXFE0M19ABJnNBrFl0YMrxA.jpg?r=fb2",
        "description": "Sex columnist Carrie Bradshaw turns to her best friends Miranda, Charlotte and Samantha for advice as she experiences love and lust in New York City."
      });
  await popularSeriesData.add({
        "title": "The Walking Dead",
        "year": "2018",
        "genre": "Drama",
        "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
        "img_link": "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABW_789--8tlttlFZIPwKhzHUb0WyEf4uSUu79plUhDa9Xlz4qNTLKCkP8bjCjM6uUJCWYTsNOr8t-9RfvAhu4-zKOxqEX5ksK4k.jpg?r=76b",
        "description": "In the wake of a zombie apocalypse, survivors hold on to the hope of humanity by banding together to wage a fight for their own survival."
      });
  await popularSeriesData.add({
        "title": "Warrior",
        "year": "2018",
        "genre": "Drama",
        "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
        "img_link": "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABSiTpNTE4GOdBOni4FdkymJMbJNmg_RZBzshHe_mmNtYPQeq1LfDfVCR4TPJyOASAEPVcLaF7Q2IeUTV1Izy0WxibTIsrQyI6tE.jpg?r=d33",
        "description": "A martial arts expert arrives from China in 19th-century San Francisco, where he joins a powerful crime family and confronts rival Chinatown gangs."
      });
  await popularSeriesData.add({
        "title": "The Blacklist",
        "year": "2018",
        "genre": "Drama",
        "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
        "img_link": "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABa93mFI8fIPo-6k2BsnStxV2uILMaqWimE1-UM509EaUdujV4jP-KrkBR-4nbfD9QiDC2D4KxrePbfLi4aqx18QZUZqOFcjept4.jpg?r=425",
        "description": "After turning himself in, a brilliant fugitive offers to help the FBI bag other baddies, but only if rookie profiler Elizabeth Keen is his partner."
      });
  await popularSeriesData.add({
        "title": "Gossip Girl",
        "year": "2018",
        "genre": "Drama",
        "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
        "img_link": "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABYPNUeRo6xPkX-hOWt5e6n3mHtaoniaj37o18fAfeUAppz_lvJDjh-12btF8Lu3cZAeeDk9ZFwFu0dxRI7o8Dug-v6JPEKRM6gI.jpg?r=8e5",
        "description": "A group of hyperprivileged Manhattan private-school kids seem to get away with everything. Except an anonymous blogger is watching their every move."
      });
  await popularSeriesData.add({
        "title": "Breaking Bad",
        "year": "2018",
        "genre": "Drama",
        "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
        "img_link": "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABYbIrcqCq1bpp0fwlFkHF3gWxbJMNtFfJvZQAqn4ldLErMpDHqukSBHD-yNns8XcksLf6nkdQUdTYS-BbKUwFr6FAW-RQMrBkSA.jpg?r=9ff",
        "description": "A high school chemistry teacher dying of cancer teams with a former student to secure his family's future by manufacturing and selling crystal meth."
      });
  await popularSeriesData.add({
        "title": "The Gentlemen",
        "year": "2018",
        "genre": "Drama",
        "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
        "img_link": "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABYIDmzOj8EACtjUnPvZ_qKNJRPKZGSWznIv1Vr7sKPLK6aPov9cUeTXIMZe7kkgnNBJh30jh2zd2Is_4oOaRFoox4sUkcomJ5iyGDG9YWsRYyXMpusO2bjnVHb9yrTHmVYTCXtxw9346ncz8cnjwzRYk3wqDmDctSlxPbxqHGR3OPd1XNWJKk-LaZ0A9Rqg.jpg?r=0ad",
        "description": "When aristocratic Eddie inherits the family estate, he discovers that it's home to an enormous weed empire — and its proprietors aren't going anywhere."
      });
  await popularSeriesData.add({
        "title": "Vikings",
        "year": "2018",
        "genre": "Drama",
        "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
        "img_link": "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABXFIXbzzrhgKDE5HzOnDSlFEB0lwL2G5jRhWmgwyoP6KevXbXw_zC_4TikgPe7qDokxxQjN2Ao6QQySmXc56m38Di59Vnwo0A9M.jpg?r=2f0",
        "description": "This gritty drama charts the exploits of Viking hero Ragnar Lothbrok as he extends the Norse reach by challenging an unfit leader who lacks vision."
      });
  await popularSeriesData.add({
        "title": "Peaky Blinders",
        "year": "2018",
        "genre": "Drama",
        "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
        "img_link": "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABTU3_q-CINXVdjlijgk1THbgnzWIGC-eFlZzAVkXiaY66_AYRGgPdX_j3weXYTi9qY_Wv0oDnzFazhGgquAoUQzOBgv6k8bfObyn3uuD0-u2WpNCTsdsBvqUE40uLdZmJWvo.jpg?r=c0e",
        "description": "A notorious gang in 1919 Birmingham, England, is led by the fierce Tommy Shelby, a crime boss set on moving up in the world no matter the cost."
      });
  await popularSeriesData.add({
        "title": "Sherlock",
        "year": "2018",
        "genre": "Drama",
        "actors": "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
        "img_link": "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABcoz2WtE774fulUKetZAS7u-ovXMXOOc6S5ylFtoqZa7ap2D1b3GBhDqZzf2pcx9qE5X71glJE6F0LJvCgRKJWgZbCcS-appkbI.jpg?r=5fd",
        "description": "In this updated take on Sir Arthur Conan Doyle's beloved mystery tales, the eccentric sleuth prowls the streets of modern London in search of clues."
      });

  await originalsData.add({
    "title": "The Queen's Gambit",
    "year": "2020",
    "genre": "Drama",
    "actors": "Anya Taylor-Joy, Bill Camp, Marielle Heller",
    "img_link": "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/zU0htwkhNvBQdVSIKB9s6hgVeFK.jpg",
    "description": "In a 1950s orphanage, a young girl reveals an astonishing talent for chess and begins an unlikely journey to stardom while grappling with addiction."
  });
  await originalsData.add({
    "title": "Griselda",
    "year": "2024",
    "genre": "Drama",
    "actors": "Sofía Vergara, Alberto Guerra, Christian Tappan",
    "img_link": "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/nhEtK1lJKb3kqBtDBDXynGr3hJL.jpg",
    "description": "Inspired by real events, this fictional dramatization shows Griselda Blanco's journey from Medellín to becoming the Godmother of Miami's drug empire."
  });
  await originalsData.add({
    "title": "Wednesday",
    "year": "2022",
    "genre": "Fantasy",
    "actors": "Jenna Ortega, Gwendoline Christie, Riki Lindhome",
    "img_link": "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/9PFonBhy4cQy7Jz20NpMygczOkv.jpg",
    "description": "Smart, sarcastic and a little dead inside, Wednesday Addams investigates a murder spree while making new friends — and foes — at Nevermore Academy."
  });
  await originalsData.add({
    "title": "Bridgerton",
    "year": "2020",
    "genre": "Drama",
    "actors": "Adjoa Andoh, Julie Andrews, Lorraine Ashbourne",
    "img_link": "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/luoKpgVwi1E5nQsi7W0UuKHu2Rq.jpg",
    "description": "The eight close-knit siblings of the Bridgerton family look for love and happiness in London high society. Inspired by Julia Quinn's bestselling novels."
  });
  await originalsData.add({
    "title": "Narcos",
    "year": "2015",
    "genre": "Drama",
    "actors": "Wagner Moura, Pedro Pascal, Boyd Holbrook",
    "img_link": "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/rTmal9fDbwh5F0waol2hq35U4ah.jpg",
    "description": "The true story of Colombia's infamously violent and powerful drug cartels fuels this gritty gangster drama series."
  });

}

class MobileApp extends StatelessWidget {
  const MobileApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix Clone App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 104, 94, 122),
          background: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  HomePage({super.key});

  final Map<String, dynamic> data = {
    'title': "The Devil Wears Prada",
    'year': "2006",
    'genre': "Comedy, Drama",
    'description': "A college grad discovers her own strength — and style — while suffering for success as an assistant to the tyrannical editor of a fashion magazine.",
    'actors': "Meryl Streep, Anne Hathaway, Stanley Tucci, Simon Baker, Emily Blunt, Adrian Grenier",
    'img_link': "https://occ-0-3032-3467.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABeRVPZPPeDpkfzuQLJBXMJS-cwhKXigg36DLHIdBb0T8O5sMMEuQPi4GPWXGPZ-8HxD7YcNjKptnShTfqRRPi05KeB1rAeKE21vW.jpg?r=3e8"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            Header(data: data, imgPath: 'assets/tdwp-header.jpg'),
            Container(
              margin: const EdgeInsets.all(30), 
              child: MovieSection(title: 'Top 10 - Romania', content: 'top10ro'),
            ), 
            Container(
              margin: const EdgeInsets.all(30),
              child: MovieSection(title: 'Popular Series', content: 'popularSeries'),
            ),
            Container(
              margin: const EdgeInsets.all(30), 
              child: MovieSection(title: 'Popular Movies', content: 'popularMovies'),
            ),
            Container(
              margin: const EdgeInsets.all(30),
              child: SpecialSection(title: 'Netflix Originals'),
            ), 
          ],
        ),
      ),
    );
  }
}

class SeriesPage extends StatelessWidget {
  SeriesPage({super.key});

  final Map<String, dynamic> data1 = {
    'title': "Stranger Things",
    'year': "2016",
    'genre': "Drama",
    'description': "When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces and one strange little girl.",
    'actors': "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    'img_link': "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABc_QuOdHzJa9WwBiBlfEvpcFRKq9TAIgdJv0KoSilQZ8JMEsdCdQS4VGD6gwVg2CYCYNhTJIald5uVsXbMf-3QaF1k1fnFRbovQr6ddWUtkSOUzil_dtlD1wOIeD_pSI6pAx.jpg?r=c68"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            Header(data: data1, imgPath: 'assets/st-header.png'),
            Container(
              margin: const EdgeInsets.all(30),
              child: MovieSection(title: 'Popular Series', content: 'popularSeries'),
            ),
            Container(
              margin: const EdgeInsets.all(30), 
              child: MovieSection(title: 'Top 10 - Romania', content: 'top10ro'),
            ), 
            Container(
              margin: const EdgeInsets.all(30),
              child: SpecialSection(title: 'Netflix Originals'),
            ), 
          ],
        ),
      ),
    );
  }
}

class FilmsPage extends StatelessWidget {
  FilmsPage({super.key});

  final Map<String, dynamic> data1 = {
    'title': "Top Gun: Maverick",
    'year': "2022",
    'genre': "Action",
    'description': "After more than 30 years as one of the Navy's top aviators, Maverick trains a group of Top Gun graduates for a specialized — and dangerous — mission.",
    'actors': "Tom Cruise, Miles Teller, Jennifer Connelly",
    'img_link': "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABZ_rblqcHBS4lWmBXoMr-JRL6-oiSRFQ6E7MK-fjDNzHYvnqMFBZ3HRAmWVbMGxQtZtegrI-3qLlGyBKggmn-ES-lwULU9Qao1M.jpg?r=67e"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            Header(data: data1, imgPath: 'assets/tg-header.jpg'),
            Container(
              margin: const EdgeInsets.all(30),
              child: MovieSection(title: 'Popular Movies', content: 'popularMovies'),
            ),
            Container(
              margin: const EdgeInsets.all(30), 
              child: MovieSection(title: 'Top 10 - Romania', content: 'top10ro'),
            ), 
            Container(
              margin: const EdgeInsets.all(30),
              child: SpecialSection(title: 'Netflix Originals'),
            ), 
          ],
        ),
      ),
    );
  }
}

class MyListPage extends StatelessWidget {
  const MyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My List',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(255, 195, 195, 1),
      ),
      body: Center(
        child: 
          SectionMyList(),
      ),
    );
  }
}


class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: SizedBox(
        width: 100,
        height: 50,
        child: Image.asset('assets/netflix-logo.png', fit: BoxFit.fitHeight),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Home',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(255, 195, 195, 1),
              ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
        TextButton(
          child: const Text('Series',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(255, 195, 195, 1),
              ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SeriesPage()),
            );
          },
        ),
        TextButton(
          child: const Text('Films',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(255, 195, 195, 1),
              ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FilmsPage()),
            );
          },
        ),
        TextButton(
          child: const Text('My List',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(255, 195, 195, 1),
              ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyListPage()),
            );
          },
        ),
      ],
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key, required this.data, required this.imgPath});
  final Map<String, dynamic> data;
  final String imgPath;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imgPath),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data['title'],
                style: const TextStyle(
                  fontSize: 60, 
                  color: Color.fromRGBO(255, 195, 195, 1),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Modal(data: data);
                    },
                  );
                },
                child: const Text('View More'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Modal extends StatelessWidget {
  final Map<String, dynamic> data;

  const Modal({super.key, 
              required this.data});
  
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 600,
        color: const Color.fromRGBO(255, 195, 195, 1),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                data['title'],
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['year'],
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(width: 10),
                  const Text("| ", style: TextStyle(fontSize: 20)),
                  Text(
                    data['genre'],
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                data['description'],
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                "Actors: ${data['actors']}",
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () async {
                  if (box.values.contains(data)) {
                    final index = box.values.toList().indexWhere((element) => element == data);
                    await box.deleteAt(index);
                  } else {
                    await box.add(data);
                  }
                },
                child: ValueListenableBuilder(
                  valueListenable: box.listenable(),
                  builder: (context, Box box, _) {
                    return Text(box.values.contains(data) ? '- My List' : '+ My List');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class MovieSection extends StatelessWidget {
  MovieSection({super.key, required this.title, required this.content});
  final String title;
  final String content;

  final ScrollController _controller = ScrollController();

  
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box(content).listenable(),
      builder: (context, Box box, _) {
        var allData = box.values.toList();
        return Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 40,
                  color: Color.fromRGBO(255, 195, 195, 1),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      if (_controller.hasClients) {
                        _controller.animateTo(
                          _controller.offset - 320, 
                          curve: Curves.easeOut,
                          duration: const Duration(milliseconds: 300),
                        );
                      }
                    },
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 200,
                      child: ListView.separated(
                        controller: _controller,
                        scrollDirection: Axis.horizontal,
                        itemCount: allData.length,
                        itemBuilder: (context, index) => Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Modal(data: allData[index]);
                                  },
                                );
                              },
                              child: SizedBox(
                                width: 300,
                                height: 170,
                                child: Image.network(
                                  allData[index]['img_link'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              allData[index]['title'],
                              style: const TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(255, 195, 195, 1),
                              ),
                            ),
                          ],
                        ),
                        separatorBuilder: (context, index) => const SizedBox(width: 20),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: () {
                      if (_controller.hasClients) {
                        _controller.animateTo(
                          _controller.offset + 320, 
                          curve: Curves.easeOut,
                          duration: const Duration(milliseconds: 300),
                        );
                      }
                    },
                  ),
                ],
              ),
            ],
          );
      },
    );
  }
}

class SpecialSection extends StatelessWidget {
  SpecialSection({super.key, required this.title});
  final String title;

  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box('originals').listenable(),
      builder: (context, Box box, _) {
        var allData = box.values.toList();
        return Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 40,
                  color: Color.fromRGBO(255, 195, 195, 1),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      if (_controller.hasClients) {
                        _controller.animateTo(
                          _controller.offset - 320, 
                          curve: Curves.easeOut,
                          duration: const Duration(milliseconds: 300),
                        );
                      }
                    },
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 550,
                      child: ListView.separated(
                        controller: _controller,
                        scrollDirection: Axis.horizontal,
                        itemCount: allData.length,
                        itemBuilder: (context, index) => Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Modal(data: allData[index]);
                                  },
                                );
                              },
                              child: SizedBox(
                                width: 300,
                                height: 500,
                                child: Image.network(
                                  allData[index]['img_link'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              allData[index]['title'],
                              style: const TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(255, 195, 195, 1),
                              ),
                            ),
                          ],
                        ),
                        separatorBuilder: (context, index) => const SizedBox(width: 20),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: () {
                      if (_controller.hasClients) {
                        _controller.animateTo(
                          _controller.offset + 320, 
                          curve: Curves.easeOut,
                          duration: const Duration(milliseconds: 300),
                        );
                      }
                    },
                  ),
                ],
              ),
            ],
          );
      },
    );
  }
}

class SectionMyList extends StatelessWidget{
  SectionMyList({super.key});
  
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box('myList').listenable(),
      builder: (context, Box box, _) {
        var allData = box.values.toList();
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                if (_controller.hasClients) {
                  _controller.animateTo(
                    _controller.offset - 320, 
                    curve: Curves.easeOut,
                    duration: const Duration(milliseconds: 300),
                  );
                }
              },
            ),
            Expanded(
              child: SizedBox(
                height: 200,
                child: ListView.separated(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: allData.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Modal(data: allData[index]);
                            },
                          );
                        },
                        child: SizedBox(
                          width: 300,
                          height: 170,
                          child: Image.network(
                            allData[index]['img_link'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        allData[index]['title'],
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(255, 195, 195, 1),
                        ),
                      ),
                    ],
                  ),
                  separatorBuilder: (context, index) => const SizedBox(width: 20),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                if (_controller.hasClients) {
                  _controller.animateTo(
                    _controller.offset + 320, 
                    curve: Curves.easeOut,
                    duration: const Duration(milliseconds: 300),
                  );
                }
              },
            ),
          ],
        );
      },
    );
  }
}