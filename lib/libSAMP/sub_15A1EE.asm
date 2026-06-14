; =========================================================
; Game Engine Function: sub_15A1EE
; Address            : 0x15A1EE - 0x15A216
; =========================================================

15A1EE:  PUSH            {R4,R6,R7,LR}
15A1F0:  ADD             R7, SP, #8
15A1F2:  SUB             SP, SP, #0x10
15A1F4:  ADD             R4, SP, #0x18+var_14
15A1F6:  MOV             R0, R4
15A1F8:  BL              sub_15A150
15A1FC:  MOV             R0, R4; this
15A1FE:  MOVS            R1, #0; std::__fs::filesystem::path *
15A200:  BLX             j__ZNSt6__ndk14__fs10filesystem12__remove_allERKNS1_4pathEPNS_10error_codeE; std::__fs::filesystem::__remove_all(std::__fs::filesystem::path const&,std::error_code *)
15A204:  LDRB.W          R0, [SP,#0x18+var_14]
15A208:  LSLS            R0, R0, #0x1F
15A20A:  ITT NE
15A20C:  LDRNE           R0, [SP,#0x18+var_C]; void *
15A20E:  BLXNE           j__ZdlPv; operator delete(void *)
15A212:  ADD             SP, SP, #0x10
15A214:  POP             {R4,R6,R7,PC}
