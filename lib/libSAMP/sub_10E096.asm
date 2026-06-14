; =========================================================
; Game Engine Function: sub_10E096
; Address            : 0x10E096 - 0x10E0B8
; =========================================================

10E096:  PUSH            {R7,LR}
10E098:  MOV             R7, SP
10E09A:  LDRB.W          R12, [R1]
10E09E:  LDRD.W          R2, LR, [R1,#4]
10E0A2:  ANDS.W          R3, R12, #1
10E0A6:  ITT EQ
10E0A8:  ADDEQ.W         LR, R1, #1
10E0AC:  MOVEQ.W         R2, R12,LSR#1
10E0B0:  MOV             R1, LR
10E0B2:  BLX             j__ZNKSt6__ndk14__fs10filesystem4path9__compareENS_17basic_string_viewIcNS_11char_traitsIcEEEE; std::__fs::filesystem::path::__compare(std::string_view)
10E0B6:  POP             {R7,PC}
