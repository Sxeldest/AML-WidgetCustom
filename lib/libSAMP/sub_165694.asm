; =========================================================
; Game Engine Function: sub_165694
; Address            : 0x165694 - 0x165768
; =========================================================

165694:  PUSH            {R4-R7,LR}
165696:  ADD             R7, SP, #0xC
165698:  PUSH.W          {R8-R11}
16569C:  SUB             SP, SP, #4
16569E:  MOV             R8, R3
1656A0:  MOV             R4, R2
1656A2:  CBZ             R2, loc_1656A8
1656A4:  MOVS            R2, #0
1656A6:  STR             R2, [R4]
1656A8:  BLX             fopen
1656AC:  CBZ             R0, loc_1656C0
1656AE:  MOVS            R1, #0; off
1656B0:  MOVS            R2, #2; whence
1656B2:  MOV             R6, R0
1656B4:  BLX             fseek
1656B8:  CBZ             R0, loc_1656CC
1656BA:  MOV             R0, R6; stream
1656BC:  BLX             fclose
1656C0:  MOVS            R5, #0
1656C2:  MOV             R0, R5
1656C4:  ADD             SP, SP, #4
1656C6:  POP.W           {R8-R11}
1656CA:  POP             {R4-R7,PC}
1656CC:  MOV             R0, R6; stream
1656CE:  BLX             ftell
1656D2:  MOV             R9, R0
1656D4:  ADDS            R0, #1
1656D6:  BEQ             loc_1656BA
1656D8:  MOV             R0, R6; stream
1656DA:  MOVS            R1, #0; off
1656DC:  MOVS            R2, #0; whence
1656DE:  BLX             fseek
1656E2:  CMP             R0, #0
1656E4:  BNE             loc_1656BA
1656E6:  LDR             R0, =(dword_381B58 - 0x1656EC)
1656E8:  ADD             R0, PC; dword_381B58
1656EA:  LDR             R1, [R0]
1656EC:  MOV             R10, R0
1656EE:  ADD.W           R0, R9, R8
1656F2:  CBZ             R1, loc_1656FE
1656F4:  LDR.W           R2, [R1,#0x370]
1656F8:  ADDS            R2, #1
1656FA:  STR.W           R2, [R1,#0x370]
1656FE:  LDR             R1, =(dword_381B60 - 0x165706)
165700:  LDR             R2, =(off_2390AC - 0x165708)
165702:  ADD             R1, PC; dword_381B60
165704:  ADD             R2, PC; off_2390AC
165706:  MOV             R11, R1
165708:  LDR             R1, [R1]
16570A:  LDR             R2, [R2]; sub_171190
16570C:  BLX             R2; sub_171190
16570E:  CMP             R0, #0
165710:  BEQ             loc_1656BA
165712:  MOVS            R1, #1; size
165714:  MOV             R2, R9; n
165716:  MOV             R3, R6; stream
165718:  MOV             R5, R0
16571A:  BLX             fread
16571E:  CMP             R0, R9
165720:  BNE             loc_165742
165722:  CMP.W           R8, #1
165726:  ITTT GE
165728:  ADDGE.W         R0, R5, R9; int
16572C:  MOVGE           R1, R8; n
16572E:  BLXGE           sub_22178C
165732:  MOV             R0, R6; stream
165734:  BLX             fclose
165738:  CMP             R4, #0
16573A:  BEQ             loc_1656C2
16573C:  STR.W           R9, [R4]
165740:  B               loc_1656C2
165742:  MOV             R0, R6; stream
165744:  BLX             fclose
165748:  LDR.W           R0, [R10]
16574C:  CBZ             R0, loc_165758
16574E:  LDR.W           R1, [R0,#0x370]
165752:  SUBS            R1, #1
165754:  STR.W           R1, [R0,#0x370]
165758:  LDR             R0, =(off_2390B0 - 0x165762)
16575A:  LDR.W           R1, [R11]
16575E:  ADD             R0, PC; off_2390B0
165760:  LDR             R2, [R0]; j_opus_decoder_destroy_0
165762:  MOV             R0, R5
165764:  BLX             R2; j_opus_decoder_destroy_0
165766:  B               loc_1656C0
