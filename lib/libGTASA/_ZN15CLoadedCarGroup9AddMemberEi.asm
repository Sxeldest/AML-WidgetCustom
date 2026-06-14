; =========================================================
; Game Engine Function: _ZN15CLoadedCarGroup9AddMemberEi
; Address            : 0x4D17BE - 0x4D18AE
; =========================================================

4D17BE:  LDRSH.W         R2, [R0]
4D17C2:  CMP             R2, #0
4D17C4:  BLT             loc_4D18A8
4D17C6:  MOV             R2, R0
4D17C8:  LDRSH.W         R3, [R2,#2]!
4D17CC:  CMP.W           R3, #0xFFFFFFFF
4D17D0:  BLE             loc_4D18AA
4D17D2:  MOV             R2, R0
4D17D4:  LDRSH.W         R3, [R2,#4]!
4D17D8:  CMP             R3, #0
4D17DA:  ITTT GE
4D17DC:  MOVGE           R2, R0
4D17DE:  LDRSHGE.W       R3, [R2,#6]!
4D17E2:  CMPGE           R3, #0
4D17E4:  BLT             loc_4D18AA
4D17E6:  MOV             R2, R0
4D17E8:  LDRSH.W         R3, [R2,#8]!
4D17EC:  CMP             R3, #0
4D17EE:  ITTT GE
4D17F0:  MOVGE           R2, R0
4D17F2:  LDRSHGE.W       R3, [R2,#0xA]!
4D17F6:  CMPGE           R3, #0
4D17F8:  BLT             loc_4D18AA
4D17FA:  MOV             R2, R0
4D17FC:  LDRSH.W         R3, [R2,#0xC]!
4D1800:  CMP             R3, #0
4D1802:  ITTT GE
4D1804:  MOVGE           R2, R0
4D1806:  LDRSHGE.W       R3, [R2,#0xE]!
4D180A:  CMPGE           R3, #0
4D180C:  BLT             loc_4D18AA
4D180E:  MOV             R2, R0
4D1810:  LDRSH.W         R3, [R2,#0x10]!
4D1814:  CMP             R3, #0
4D1816:  ITTT GE
4D1818:  MOVGE           R2, R0
4D181A:  LDRSHGE.W       R3, [R2,#0x12]!
4D181E:  CMPGE           R3, #0
4D1820:  BLT             loc_4D18AA
4D1822:  MOV             R2, R0
4D1824:  LDRSH.W         R3, [R2,#0x14]!
4D1828:  CMP             R3, #0
4D182A:  ITTT GE
4D182C:  MOVGE           R2, R0
4D182E:  LDRSHGE.W       R3, [R2,#0x16]!
4D1832:  CMPGE           R3, #0
4D1834:  BLT             loc_4D18AA
4D1836:  MOV             R2, R0
4D1838:  LDRSH.W         R3, [R2,#0x18]!
4D183C:  CMP             R3, #0
4D183E:  ITTT GE
4D1840:  MOVGE           R2, R0
4D1842:  LDRSHGE.W       R3, [R2,#0x1A]!
4D1846:  CMPGE           R3, #0
4D1848:  BLT             loc_4D18AA
4D184A:  MOV             R2, R0
4D184C:  LDRSH.W         R3, [R2,#0x1C]!
4D1850:  CMP             R3, #0
4D1852:  ITTT GE
4D1854:  MOVGE           R2, R0
4D1856:  LDRSHGE.W       R3, [R2,#0x1E]!
4D185A:  CMPGE           R3, #0
4D185C:  BLT             loc_4D18AA
4D185E:  MOV             R2, R0
4D1860:  LDRSH.W         R3, [R2,#0x20]!
4D1864:  CMP             R3, #0
4D1866:  ITTT GE
4D1868:  MOVGE           R2, R0
4D186A:  LDRSHGE.W       R3, [R2,#0x22]!
4D186E:  CMPGE           R3, #0
4D1870:  BLT             loc_4D18AA
4D1872:  MOV             R2, R0
4D1874:  LDRSH.W         R3, [R2,#0x24]!
4D1878:  CMP             R3, #0
4D187A:  ITTT GE
4D187C:  MOVGE           R2, R0
4D187E:  LDRSHGE.W       R3, [R2,#0x26]!
4D1882:  CMPGE           R3, #0
4D1884:  BLT             loc_4D18AA
4D1886:  MOV             R2, R0
4D1888:  LDRSH.W         R3, [R2,#0x28]!
4D188C:  CMP             R3, #0
4D188E:  ITTT GE
4D1890:  MOVGE           R2, R0
4D1892:  LDRSHGE.W       R3, [R2,#0x2A]!
4D1896:  CMPGE           R3, #0
4D1898:  BLT             loc_4D18AA
4D189A:  LDRSH.W         R2, [R0,#0x2C]!
4D189E:  CMP             R2, #0
4D18A0:  MOV             R2, R0
4D18A2:  IT LT
4D18A4:  STRHLT          R1, [R2]
4D18A6:  BX              LR
4D18A8:  MOV             R2, R0
4D18AA:  STRH            R1, [R2]
4D18AC:  BX              LR
