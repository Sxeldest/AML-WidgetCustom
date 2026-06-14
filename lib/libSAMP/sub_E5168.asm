; =========================================================
; Game Engine Function: sub_E5168
; Address            : 0xE5168 - 0xE5210
; =========================================================

E5168:  PUSH            {R4,R5,R7,LR}
E516A:  ADD             R7, SP, #8
E516C:  MOV             R4, R0
E516E:  LDR             R0, [R0]
E5170:  MOV             R5, R1
E5172:  LDR             R1, [R0,#0x18]
E5174:  MOV             R0, R4
E5176:  BLX             R1
E5178:  LDR             R0, =(_ZNSt6__ndk17codecvtIcc9mbstate_tE2idE_ptr - 0xE517E)
E517A:  ADD             R0, PC; _ZNSt6__ndk17codecvtIcc9mbstate_tE2idE_ptr
E517C:  LDR             R1, [R0]; std::locale::id *
E517E:  MOV             R0, R5; this
E5180:  BLX             j__ZNKSt6__ndk16locale9use_facetERNS0_2idE; std::locale::use_facet(std::locale::id &)
E5184:  LDR             R1, [R0]
E5186:  STR             R0, [R4,#0x44]
E5188:  LDRB.W          R5, [R4,#0x5A]
E518C:  LDR             R1, [R1,#0x1C]
E518E:  BLX             R1
E5190:  CMP             R5, R0
E5192:  STRB.W          R0, [R4,#0x5A]
E5196:  IT EQ
E5198:  POPEQ           {R4,R5,R7,PC}
E519A:  VMOV.I32        Q8, #0
E519E:  ADD.W           R3, R4, #8
E51A2:  LDRB.W          R1, [R4,#0x58]
E51A6:  MOVS            R2, #0
E51A8:  STR             R2, [R4,#0x1C]
E51AA:  VST1.32         {D16-D17}, [R3]!
E51AE:  STR             R2, [R3]
E51B0:  CBZ             R0, loc_E51D8
E51B2:  CBZ             R1, loc_E51BC
E51B4:  LDR             R0, [R4,#0x20]; void *
E51B6:  CBZ             R0, loc_E51BC
E51B8:  BLX             j__ZdaPv; operator delete[](void *)
E51BC:  LDRD.W          R0, R1, [R4,#0x38]
E51C0:  LDRB.W          R2, [R4,#0x59]
E51C4:  STRB.W          R2, [R4,#0x58]
E51C8:  MOVS            R2, #0
E51CA:  STRD.W          R1, R2, [R4,#0x34]
E51CE:  STR             R2, [R4,#0x3C]
E51D0:  STR             R0, [R4,#0x20]
E51D2:  STRB.W          R2, [R4,#0x59]
E51D6:  POP             {R4,R5,R7,PC}
E51D8:  CBZ             R1, loc_E51EC
E51DA:  LDR             R0, [R4,#0x34]; unsigned int
E51DC:  STR             R0, [R4,#0x3C]
E51DE:  BLX             j__Znaj; operator new[](uint)
E51E2:  MOVS            R1, #1
E51E4:  STR             R0, [R4,#0x38]
E51E6:  STRB.W          R1, [R4,#0x59]
E51EA:  POP             {R4,R5,R7,PC}
E51EC:  LDR             R1, [R4,#0x20]
E51EE:  ADD.W           R0, R4, #0x2C ; ','
E51F2:  CMP             R1, R0
E51F4:  BEQ             loc_E51DA
E51F6:  MOVS            R0, #0
E51F8:  STRB.W          R0, [R4,#0x59]
E51FC:  LDR             R0, [R4,#0x34]; unsigned int
E51FE:  STRD.W          R1, R0, [R4,#0x38]
E5202:  BLX             j__Znaj; operator new[](uint)
E5206:  MOVS            R1, #1
E5208:  STR             R0, [R4,#0x20]
E520A:  STRB.W          R1, [R4,#0x58]
E520E:  POP             {R4,R5,R7,PC}
