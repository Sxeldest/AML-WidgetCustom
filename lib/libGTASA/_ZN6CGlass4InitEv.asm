; =========================================================
; Game Engine Function: _ZN6CGlass4InitEv
; Address            : 0x5AB330 - 0x5AB42E
; =========================================================

5AB330:  LDR             R0, =(_ZN6CGlass11aGlassPanesE_ptr - 0x5AB33E)
5AB332:  ADR             R1, dword_5AB430
5AB334:  LDR             R2, =(CentersWithTriangle_ptr - 0x5AB344)
5AB336:  MOVW            R3, #(byte_A40075 - 0xA3F048)
5AB33A:  ADD             R0, PC; _ZN6CGlass11aGlassPanesE_ptr
5AB33C:  VLD1.64         {D16-D17}, [R1@128]
5AB340:  ADD             R2, PC; CentersWithTriangle_ptr
5AB342:  LDR             R1, [R0]; CGlass::aGlassPanes ...
5AB344:  ADR             R0, dword_5AB440
5AB346:  VLD1.64         {D18-D19}, [R0@128]
5AB34A:  LDR             R0, [R2]; CentersWithTriangle
5AB34C:  MOVS            R2, #0
5AB34E:  STRB.W          R2, [R1,#(byte_A3F125 - 0xA3F048)]
5AB352:  STRB.W          R2, [R1,#(byte_A3F0B5 - 0xA3F048)]
5AB356:  STRB.W          R2, [R1,#(byte_A3F195 - 0xA3F048)]
5AB35A:  STRB.W          R2, [R1,#(byte_A3F205 - 0xA3F048)]
5AB35E:  STRB.W          R2, [R1,#(byte_A3F275 - 0xA3F048)]
5AB362:  STRB.W          R2, [R1,#(byte_A3F2E5 - 0xA3F048)]
5AB366:  STRB.W          R2, [R1,#(byte_A3F355 - 0xA3F048)]
5AB36A:  STRB.W          R2, [R1,#(byte_A3F3C5 - 0xA3F048)]
5AB36E:  STRB.W          R2, [R1,#(byte_A3F435 - 0xA3F048)]
5AB372:  STRB.W          R2, [R1,#(byte_A3F4A5 - 0xA3F048)]
5AB376:  STRB.W          R2, [R1,#(byte_A3F515 - 0xA3F048)]
5AB37A:  STRB.W          R2, [R1,#(byte_A3F585 - 0xA3F048)]
5AB37E:  STRB.W          R2, [R1,#(byte_A3F5F5 - 0xA3F048)]
5AB382:  STRB.W          R2, [R1,#(byte_A3F665 - 0xA3F048)]
5AB386:  STRB.W          R2, [R1,#(byte_A3F6D5 - 0xA3F048)]
5AB38A:  STRB.W          R2, [R1,#(byte_A3F745 - 0xA3F048)]
5AB38E:  STRB.W          R2, [R1,#(byte_A3F7B5 - 0xA3F048)]
5AB392:  STRB.W          R2, [R1,#(byte_A3F825 - 0xA3F048)]
5AB396:  STRB            R2, [R1,R3]
5AB398:  MOVW            R3, #(byte_A40155 - 0xA3F048)
5AB39C:  STRB.W          R2, [R1,#(byte_A3F905 - 0xA3F048)]
5AB3A0:  STRB.W          R2, [R1,#(byte_A3F895 - 0xA3F048)]
5AB3A4:  STRB.W          R2, [R1,#(byte_A3F975 - 0xA3F048)]
5AB3A8:  STRB.W          R2, [R1,#(byte_A3F9E5 - 0xA3F048)]
5AB3AC:  STRB.W          R2, [R1,#(byte_A3FA55 - 0xA3F048)]
5AB3B0:  STRB.W          R2, [R1,#(byte_A3FAC5 - 0xA3F048)]
5AB3B4:  STRB.W          R2, [R1,#(byte_A3FB35 - 0xA3F048)]
5AB3B8:  STRB.W          R2, [R1,#(byte_A3FBA5 - 0xA3F048)]
5AB3BC:  STRB.W          R2, [R1,#(byte_A3FC15 - 0xA3F048)]
5AB3C0:  STRB.W          R2, [R1,#(byte_A3FC85 - 0xA3F048)]
5AB3C4:  STRB.W          R2, [R1,#(byte_A3FCF5 - 0xA3F048)]
5AB3C8:  STRB.W          R2, [R1,#(byte_A3FD65 - 0xA3F048)]
5AB3CC:  STRB.W          R2, [R1,#(byte_A3FDD5 - 0xA3F048)]
5AB3D0:  STRB.W          R2, [R1,#(byte_A3FE45 - 0xA3F048)]
5AB3D4:  STRB.W          R2, [R1,#(byte_A3FEB5 - 0xA3F048)]
5AB3D8:  STRB.W          R2, [R1,#(byte_A3FF25 - 0xA3F048)]
5AB3DC:  STRB.W          R2, [R1,#(byte_A3FF95 - 0xA3F048)]
5AB3E0:  STRB.W          R2, [R1,#(byte_A40005 - 0xA3F048)]
5AB3E4:  STRB            R2, [R1,R3]
5AB3E6:  MOVW            R3, #(byte_A400E5 - 0xA3F048)
5AB3EA:  STRB            R2, [R1,R3]
5AB3EC:  MOVW            R3, #(byte_A401C5 - 0xA3F048)
5AB3F0:  STRB            R2, [R1,R3]
5AB3F2:  MOVW            R3, #(byte_A40235 - 0xA3F048)
5AB3F6:  STRB            R2, [R1,R3]
5AB3F8:  MOVW            R3, #(byte_A402A5 - 0xA3F048)
5AB3FC:  STRB            R2, [R1,R3]
5AB3FE:  MOVW            R3, #(byte_A40315 - 0xA3F048)
5AB402:  STRB            R2, [R1,R3]
5AB404:  MOVW            R3, #(byte_A40385 - 0xA3F048)
5AB408:  STRB            R2, [R1,R3]
5AB40A:  MOVW            R3, #(byte_A403F5 - 0xA3F048)
5AB40E:  STRB            R2, [R1,R3]
5AB410:  MOVW            R1, #0x6667
5AB414:  MOVW            R2, #0xAAAB
5AB418:  MOVT            R1, #0x3F66
5AB41C:  MOVT            R2, #0x3EAA
5AB420:  STRD.W          R1, R2, [R0,#(dword_A40418 - 0xA403F8)]
5AB424:  VST1.32         {D16-D17}, [R0]!
5AB428:  VST1.32         {D18-D19}, [R0]
5AB42C:  BX              LR
