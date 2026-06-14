; =========================================================
; Game Engine Function: sub_1EF666
; Address            : 0x1EF666 - 0x1EF698
; =========================================================

1EF666:  PUSH            {R4,R5,R7,LR}
1EF668:  ADD             R7, SP, #8
1EF66A:  MOV             R5, R0
1EF66C:  LDR             R0, [R1]
1EF66E:  STR             R0, [R5]
1EF670:  MOV             R4, R1
1EF672:  VLDR            D16, [R1,#4]
1EF676:  VSTR            D16, [R5,#4]
1EF67A:  LDR             R0, [R1,#0xC]
1EF67C:  STR             R0, [R5,#0xC]
1EF67E:  ADDS            R0, R1, #4
1EF680:  BL              sub_1EE5C6
1EF684:  ADD.W           R0, R5, #0x10
1EF688:  ADD.W           R1, R4, #0x10
1EF68C:  BLX             j__ZNSt6__ndk14__fs10filesystem15directory_entryC2EOS2_; std::__fs::filesystem::directory_entry::directory_entry(std::__fs::filesystem::directory_entry&&)
1EF690:  MOVS            R0, #0
1EF692:  STR             R0, [R4]
1EF694:  MOV             R0, R5
1EF696:  POP             {R4,R5,R7,PC}
