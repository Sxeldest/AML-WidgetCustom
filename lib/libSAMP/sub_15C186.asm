; =========================================================
; Game Engine Function: sub_15C186
; Address            : 0x15C186 - 0x15C1BC
; =========================================================

15C186:  PUSH            {R7,LR}
15C188:  MOV             R7, SP
15C18A:  SUB             SP, SP, #8
15C18C:  MOV             R1, R0; std::__fs::filesystem::path *
15C18E:  LDRB.W          R0, [R0,#0x31]
15C192:  MOVS            R2, #1
15C194:  LSL.W           R0, R2, R0
15C198:  TST.W           R0, #0x13
15C19C:  BEQ             loc_15C1AC
15C19E:  MOV             R0, SP; this
15C1A0:  MOVS            R2, #0; std::error_code *
15C1A2:  BLX             j__ZNSt6__ndk14__fs10filesystem8__statusERKNS1_4pathEPNS_10error_codeE; std::__fs::filesystem::__status(std::__fs::filesystem::path const&,std::error_code *)
15C1A6:  LDRB.W          R0, [SP,#0x10+var_10]
15C1AA:  B               loc_15C1B0
15C1AC:  LDRB.W          R0, [R1,#0x30]
15C1B0:  SUBS            R0, #1
15C1B2:  CLZ.W           R0, R0
15C1B6:  LSRS            R0, R0, #5
15C1B8:  ADD             SP, SP, #8
15C1BA:  POP             {R7,PC}
