; =========================================================
; Game Engine Function: sub_10A7C0
; Address            : 0x10A7C0 - 0x10A922
; =========================================================

10A7C0:  PUSH            {R4,R5,R7,LR}
10A7C2:  ADD             R7, SP, #8
10A7C4:  MOVS            R0, #0x68 ; 'h'; unsigned int
10A7C6:  BLX             j__Znwj; operator new(uint)
10A7CA:  MOV             R4, R0
10A7CC:  BL              sub_10B5C4
10A7D0:  LDR             R0, =(dword_263078 - 0x10A7DA)
10A7D2:  ADD.W           R1, R4, #0xC
10A7D6:  ADD             R0, PC; dword_263078
10A7D8:  LDR             R5, [R0,#(dword_26307C - 0x263078)]
10A7DA:  STRD.W          R1, R4, [R0]
10A7DE:  CBZ             R5, loc_10A808
10A7E0:  ADDS            R0, R5, #4
10A7E2:  DMB.W           ISH
10A7E6:  LDREX.W         R1, [R0]
10A7EA:  SUBS            R2, R1, #1
10A7EC:  STREX.W         R3, R2, [R0]
10A7F0:  CMP             R3, #0
10A7F2:  BNE             loc_10A7E6
10A7F4:  DMB.W           ISH
10A7F8:  CBNZ            R1, loc_10A808
10A7FA:  LDR             R0, [R5]
10A7FC:  LDR             R1, [R0,#8]
10A7FE:  MOV             R0, R5
10A800:  BLX             R1
10A802:  MOV             R0, R5; this
10A804:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10A808:  MOVS            R0, #0x4C ; 'L'; unsigned int
10A80A:  BLX             j__Znwj; operator new(uint)
10A80E:  MOV             R4, R0
10A810:  BL              sub_10B654
10A814:  LDR             R0, =(dword_263070 - 0x10A81E)
10A816:  ADD.W           R1, R4, #0xC
10A81A:  ADD             R0, PC; dword_263070
10A81C:  LDR             R5, [R0,#(dword_263074 - 0x263070)]
10A81E:  STRD.W          R1, R4, [R0]
10A822:  CBZ             R5, loc_10A84C
10A824:  ADDS            R0, R5, #4
10A826:  DMB.W           ISH
10A82A:  LDREX.W         R1, [R0]
10A82E:  SUBS            R2, R1, #1
10A830:  STREX.W         R3, R2, [R0]
10A834:  CMP             R3, #0
10A836:  BNE             loc_10A82A
10A838:  DMB.W           ISH
10A83C:  CBNZ            R1, loc_10A84C
10A83E:  LDR             R0, [R5]
10A840:  LDR             R1, [R0,#8]
10A842:  MOV             R0, R5
10A844:  BLX             R1
10A846:  MOV             R0, R5; this
10A848:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10A84C:  LDR             R0, =(off_23494C - 0x10A85A)
10A84E:  MOV             R5, #0x664114
10A856:  ADD             R0, PC; off_23494C
10A858:  LDR             R4, [R0]; dword_23DF24
10A85A:  LDR             R0, [R4]
10A85C:  LDR             R1, =(sub_10A9F0+1 - 0x10A866)
10A85E:  LDR             R2, =(dword_26304C - 0x10A86A)
10A860:  ADD             R0, R5
10A862:  ADD             R1, PC; sub_10A9F0
10A864:  ADDS            R0, #0x78 ; 'x'
10A866:  ADD             R2, PC; dword_26304C
10A868:  BL              sub_164222
10A86C:  LDR             R0, [R4]
10A86E:  LDR             R1, =(sub_10AB48+1 - 0x10A878)
10A870:  LDR             R2, =(dword_263050 - 0x10A87A)
10A872:  ADD             R0, R5
10A874:  ADD             R1, PC; sub_10AB48
10A876:  ADD             R2, PC; dword_263050
10A878:  BL              sub_164222
10A87C:  LDR             R0, [R4]
10A87E:  LDR             R1, =(sub_10AC74+1 - 0x10A888)
10A880:  LDR             R2, =(off_263054 - 0x10A88C)
10A882:  ADD             R0, R5
10A884:  ADD             R1, PC; sub_10AC74
10A886:  ADDS            R0, #8
10A888:  ADD             R2, PC; off_263054
10A88A:  BL              sub_164222
10A88E:  LDR             R0, [R4]
10A890:  MOVW            R3, #0x3928
10A894:  LDR             R1, =(sub_10ADB8+1 - 0x10A8A2)
10A896:  MOVT            R3, #0x67 ; 'g'
10A89A:  LDR             R2, =(off_263058 - 0x10A8A4)
10A89C:  ADD             R0, R3
10A89E:  ADD             R1, PC; sub_10ADB8
10A8A0:  ADD             R2, PC; off_263058
10A8A2:  BL              sub_164196
10A8A6:  LDR             R0, [R4]
10A8A8:  MOVW            R3, #0x5118
10A8AC:  LDR             R1, =(sub_10AEE4+1 - 0x10A8BA)
10A8AE:  MOVT            R3, #0x67 ; 'g'
10A8B2:  LDR             R2, =(off_26305C - 0x10A8BC)
10A8B4:  ADD             R0, R3
10A8B6:  ADD             R1, PC; sub_10AEE4
10A8B8:  ADD             R2, PC; off_26305C
10A8BA:  BL              sub_164196
10A8BE:  LDR             R0, [R4]
10A8C0:  MOVW            R3, #0x2EB0
10A8C4:  LDR             R1, =(sub_10AF9C+1 - 0x10A8D2)
10A8C6:  MOVT            R3, #0x67 ; 'g'
10A8CA:  LDR             R2, =(off_263060 - 0x10A8D4)
10A8CC:  ADD             R0, R3
10A8CE:  ADD             R1, PC; sub_10AF9C
10A8D0:  ADD             R2, PC; off_263060
10A8D2:  BL              sub_164196
10A8D6:  LDR             R0, [R4]
10A8D8:  MOVW            R3, #0x18F4
10A8DC:  LDR             R1, =(sub_10B060+1 - 0x10A8EA)
10A8DE:  MOVT            R3, #0x67 ; 'g'
10A8E2:  LDR             R2, =(off_263064 - 0x10A8EC)
10A8E4:  ADD             R0, R3
10A8E6:  ADD             R1, PC; sub_10B060
10A8E8:  ADD             R2, PC; off_263064
10A8EA:  BL              sub_164196
10A8EE:  LDR             R0, [R4]
10A8F0:  MOVW            R3, #0x5A34
10A8F4:  LDR             R1, =(sub_10B118+1 - 0x10A902)
10A8F6:  MOVT            R3, #0x67 ; 'g'
10A8FA:  LDR             R2, =(off_263068 - 0x10A904)
10A8FC:  ADD             R0, R3
10A8FE:  ADD             R1, PC; sub_10B118
10A900:  ADD             R2, PC; off_263068
10A902:  BL              sub_164196
10A906:  LDR             R0, [R4]
10A908:  MOVW            R3, #0xFDAC
10A90C:  LDR             R1, =(sub_10B208+1 - 0x10A91A)
10A90E:  MOVT            R3, #0x66 ; 'f'
10A912:  LDR             R2, =(off_26306C - 0x10A91C)
10A914:  ADD             R0, R3
10A916:  ADD             R1, PC; sub_10B208
10A918:  ADD             R2, PC; off_26306C
10A91A:  POP.W           {R4,R5,R7,LR}
10A91E:  B.W             sub_164196
