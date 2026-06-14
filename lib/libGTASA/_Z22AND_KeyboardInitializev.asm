; =========================================================
; Game Engine Function: _Z22AND_KeyboardInitializev
; Address            : 0x268630 - 0x2688AC
; =========================================================

268630:  LDR             R1, =(NVtoKK_ptr - 0x26863C)
268632:  VMOV.I32        Q8, #0x64 ; 'd'
268636:  MOVS            R0, #0
268638:  ADD             R1, PC; NVtoKK_ptr
26863A:  LDR             R1, [R1]; NVtoKK
26863C:  ADDS            R2, R1, R0
26863E:  ADDS            R0, #0x10
268640:  CMP.W           R0, #0x3F0
268644:  VST1.32         {D16-D17}, [R2]
268648:  BNE             loc_26863C
26864A:  PUSH            {R4-R7,LR}
26864C:  ADD             R7, SP, #0x14+var_8
26864E:  PUSH.W          {R11}
268652:  ADR             R2, aTyuiop; "tyuiop[]\\"
268654:  ADR             R0, dword_2688B0
268656:  VLD1.64         {D0-D1}, [R2@128]
26865A:  VMOV.I32        Q11, #0
26865E:  ADR             R5, (aAsdfghtyuiop+6); "TYUIOP{}|"
268660:  MOV.W           R12, #0x1A
268664:  LDR             R2, =(KKDown_ptr - 0x268674)
268666:  MOV.W           LR, #0x2E ; '.'
26866A:  VLD1.64         {D18-D19}, [R0@128]
26866E:  ADR             R0, dword_2688C0
268670:  ADD             R2, PC; KKDown_ptr
268672:  VLD1.64         {D20-D21}, [R0@128]
268676:  ADR             R0, dword_2688D0
268678:  LDR             R4, [R2]; KKDown
26867A:  VLD1.64         {D24-D25}, [R0@128]
26867E:  ADR             R0, a23456789; "23456789-="
268680:  MOV             R2, R4
268682:  VLD1.64         {D26-D27}, [R0@128]
268686:  ADR             R0, (aQwer+5); "@#$%^&*(_+"
268688:  VST1.8          {D22-D23}, [R2]!
26868C:  VLD1.64         {D28-D29}, [R0@128]
268690:  ADR             R0, (aQwer_0+5); "$"
268692:  VLD1.64         {D30-D31}, [R0@128]
268696:  LDR             R0, =(NVtoKK_ptr - 0x2686A4)
268698:  VST1.8          {D22-D23}, [R2]
26869C:  ADD.W           R2, R4, #0x50 ; 'P'
2686A0:  ADD             R0, PC; NVtoKK_ptr
2686A2:  LDR             R1, =(KKtoShiftedChar_ptr - 0x2686B2)
2686A4:  LDR             R3, =(KKtoChar_ptr - 0x2686B4)
2686A6:  VST1.8          {D22-D23}, [R2]
2686AA:  ADD.W           R2, R4, #0x40 ; '@'
2686AE:  ADD             R1, PC; KKtoShiftedChar_ptr
2686B0:  ADD             R3, PC; KKtoChar_ptr
2686B2:  LDR             R0, [R0]; NVtoKK
2686B4:  VLD1.64         {D2-D3}, [R5@128]
2686B8:  ADR             R5, (aAsdfghjkl+6); "jkl;'\r"
2686BA:  VST1.8          {D22-D23}, [R2]
2686BE:  ADD.W           R2, R4, #0x30 ; '0'
2686C2:  VLD1.64         {D16-D17}, [R5@128]
2686C6:  LDR             R5, [R1]; KKtoShiftedChar
2686C8:  ADD.W           R1, R0, #0x44 ; 'D'
2686CC:  VST1.8          {D22-D23}, [R2]
2686D0:  ADD.W           R2, R4, #0x20 ; ' '
2686D4:  LDR             R6, [R3]; KKtoChar
2686D6:  MOV             R3, R5
2686D8:  VST1.32         {D18-D19}, [R1]
2686DC:  ADR             R1, (aZxcvbnm+9); "/"
2686DE:  VST1.8          {D22-D23}, [R2]
2686E2:  ADR             R2, (aZxcvbnmJkl+9); "JKL:\"\r"
2686E4:  VLD1.64         {D18-D19}, [R1@128]
2686E8:  ADR             R1, asc_268960; "?"
2686EA:  VLD1.64         {D22-D23}, [R2@128]
2686EE:  ADR             R2, dword_268970
2686F0:  VST1.8          {D20-D21}, [R3]!
2686F4:  VLD1.64         {D20-D21}, [R1@128]
2686F8:  MOV             R1, R6
2686FA:  VST1.8          {D24-D25}, [R1]!
2686FE:  VLD1.64         {D24-D25}, [R2@128]
268702:  ADD.W           R2, R0, #0x54 ; 'T'
268706:  VST1.32         {D24-D25}, [R2]
26870A:  ADR             R2, dword_268980
26870C:  VLD1.64         {D24-D25}, [R2@128]
268710:  MOVS            R2, #0
268712:  STR             R2, [R4,#(dword_6D6F60 - 0x6D6F00)]
268714:  MOVS            R4, #0x64 ; 'd'
268716:  STRD.W          R4, R4, [R0,#(dword_6D6EF4 - 0x6D6B04)]
26871A:  STR.W           R4, [R0,#(dword_6D6EFC - 0x6D6B04)]
26871E:  STR             R2, [R0,#(dword_6D6B08 - 0x6D6B04)]
268720:  MOVS            R2, #1
268722:  STR             R2, [R0,#(dword_6D6B24 - 0x6D6B04)]
268724:  MOVS            R2, #2
268726:  STR             R2, [R0,#(dword_6D6B1C - 0x6D6B04)]
268728:  MOVS            R2, #3
26872A:  STR             R2, [R0,#(dword_6D6B34 - 0x6D6B04)]
26872C:  MOVS            R2, #0xD
26872E:  STR.W           R2, [R0,#(dword_6D6C00 - 0x6D6B04)]
268732:  MOVS            R2, #0x16
268734:  STR             R2, [R0,#(dword_6D6B68 - 0x6D6B04)]
268736:  MOVS            R2, #0x17
268738:  STR             R2, [R0,#(dword_6D6B6C - 0x6D6B04)]
26873A:  MOVS            R2, #0x18
26873C:  STR             R2, [R0,#(dword_6D6B30 - 0x6D6B04)]
26873E:  MOVS            R2, #0x19
268740:  STR.W           R2, [R0,#(dword_6D6BF0 - 0x6D6B04)]
268744:  MOVS            R2, #0x1B
268746:  VST1.8          {D26-D27}, [R1]
26874A:  ADR             R1, dword_268990
26874C:  STR.W           R12, [R0,#(dword_6D6B14 - 0x6D6B04)]
268750:  STR             R2, [R0,#(dword_6D6B0C - 0x6D6B04)]
268752:  MOVS            R2, #0x1D
268754:  VLD1.64         {D26-D27}, [R1@128]
268758:  ADD.W           R1, R0, #0xA4
26875C:  STR.W           R2, [R0,#(dword_6D6BC8 - 0x6D6B04)]
268760:  MOVS            R2, #0x1E
268762:  STR             R2, [R0,#(dword_6D6B80 - 0x6D6B04)]
268764:  MOVS            R2, #0x43 ; 'C'
268766:  VST1.32         {D30-D31}, [R1]
26876A:  ADD.W           R1, R6, #0x20 ; ' '
26876E:  VST1.8          {D0-D1}, [R1]
268772:  ADD.W           R1, R5, #0x20 ; ' '
268776:  VST1.8          {D28-D29}, [R3]
26877A:  MOVS            R3, #0x30 ; '0'
26877C:  VST1.8          {D2-D3}, [R1]
268780:  MOVS            R1, #0x21 ; '!'
268782:  STR.W           R1, [R0,#(dword_6D6BD0 - 0x6D6B04)]
268786:  MOVS            R1, #0x20 ; ' '
268788:  STR.W           R1, [R0,#(dword_6D6BBC - 0x6D6B04)]
26878C:  MOVS            R1, #0x22 ; '"'
26878E:  STR.W           R1, [R0,#(dword_6D6BC0 - 0x6D6B04)]
268792:  MOVS            R1, #0x23 ; '#'
268794:  STR.W           R1, [R0,#(dword_6D6B90 - 0x6D6B04)]
268798:  MOVS            R1, #0x26 ; '&'
26879A:  STR.W           R1, [R0,#(dword_6D6C08 - 0x6D6B04)]
26879E:  MOVS            R1, #0x27 ; '''
2687A0:  STR.W           R1, [R0,#(dword_6D6C0C - 0x6D6B04)]
2687A4:  MOVS            R1, #0x28 ; '('
2687A6:  STR.W           R1, [R0,#(dword_6D6C04 - 0x6D6B04)]
2687AA:  MOVS            R1, #0x2A ; '*'
2687AC:  STR             R1, [R0,#(dword_6D6B70 - 0x6D6B04)]
2687AE:  MOVS            R1, #0x2B ; '+'
2687B0:  STR.W           R1, [R0,#(dword_6D6BB8 - 0x6D6B04)]
2687B4:  MOVS            R1, #0x2C ; ','
2687B6:  STR             R1, [R0,#(dword_6D6B7C - 0x6D6B04)]
2687B8:  MOVS            R1, #0x2D ; '-'
2687BA:  STR.W           R1, [R0,#(dword_6D6B84 - 0x6D6B04)]
2687BE:  MOVS            R1, #0x2F ; '/'
2687C0:  STR.W           LR, [R0,#(dword_6D6B88 - 0x6D6B04)]
2687C4:  STR.W           R1, [R0,#(dword_6D6B8C - 0x6D6B04)]
2687C8:  MOVS            R1, #0x31 ; '1'
2687CA:  STR.W           R3, [R0,#(dword_6D6B94 - 0x6D6B04)]
2687CE:  STR.W           R1, [R0,#(dword_6D6B98 - 0x6D6B04)]
2687D2:  MOVS            R1, #0x32 ; '2'
2687D4:  STR.W           R1, [R0,#(dword_6D6B9C - 0x6D6B04)]
2687D8:  MOVS            R1, #0x34 ; '4'
2687DA:  STR.W           R1, [R0,#(dword_6D6BE8 - 0x6D6B04)]
2687DE:  MOVS            R1, #0x33 ; '3'
2687E0:  STR.W           R1, [R0,#(dword_6D6BEC - 0x6D6B04)]
2687E4:  MOVS            R1, #0x35 ; '5'
2687E6:  STR             R1, [R0,#(dword_6D6B10 - 0x6D6B04)]
2687E8:  MOVS            R1, #0x36 ; '6'
2687EA:  STR.W           R1, [R0,#(dword_6D6BE0 - 0x6D6B04)]
2687EE:  MOVS            R1, #0x37 ; '7'
2687F0:  STR.W           R1, [R0,#(dword_6D6BD4 - 0x6D6B04)]
2687F4:  MOVS            R1, #0x38 ; '8'
2687F6:  STR.W           R1, [R0,#(dword_6D6BCC - 0x6D6B04)]
2687FA:  MOVS            R1, #0x39 ; '9'
2687FC:  STR             R1, [R0,#(dword_6D6B78 - 0x6D6B04)]
2687FE:  MOVS            R1, #0x3A ; ':'
268800:  STR.W           R1, [R0,#(dword_6D6BC4 - 0x6D6B04)]
268804:  MOVS            R1, #0x3B ; ';'
268806:  STR             R1, [R0,#(dword_6D6B74 - 0x6D6B04)]
268808:  MOVS            R1, #0x3C ; '<'
26880A:  STR.W           R1, [R0,#(dword_6D6BA4 - 0x6D6B04)]
26880E:  MOVS            R1, #0x3D ; '='
268810:  STR.W           R1, [R0,#(dword_6D6BA0 - 0x6D6B04)]
268814:  MOVS            R1, #0x3E ; '>'
268816:  STR.W           R1, [R0,#(dword_6D6BF4 - 0x6D6B04)]
26881A:  MOVS            R1, #0x3F ; '?'
26881C:  STR.W           R1, [R0,#(dword_6D6BF8 - 0x6D6B04)]
268820:  ADD.W           R1, R6, #0x30 ; '0'
268824:  VST1.8          {D16-D17}, [R1]
268828:  ADD.W           R1, R5, #0x30 ; '0'
26882C:  VST1.8          {D22-D23}, [R1]
268830:  MOVS            R1, #0x41 ; 'A'
268832:  STR.W           R1, [R0,#(dword_6D6BE4 - 0x6D6B04)]
268836:  MOVS            R1, #0x40 ; '@'
268838:  STR.W           R1, [R0,#(dword_6D6BFC - 0x6D6B04)]
26883C:  STR.W           R2, [R0,#(dword_6D6BD8 - 0x6D6B04)]
268840:  MOVS            R2, #0x44 ; 'D'
268842:  STR             R2, [R0,#(dword_6D6B18 - 0x6D6B04)]
268844:  MOVS            R2, #0x45 ; 'E'
268846:  STR.W           R2, [R0,#(dword_6D6BDC - 0x6D6B04)]
26884A:  MOVS            R2, #0x4B ; 'K'
26884C:  STR             R2, [R0,#(dword_6D6B20 - 0x6D6B04)]
26884E:  ADD.W           R2, R6, #0x40 ; '@'
268852:  VST1.8          {D18-D19}, [R2]
268856:  ADD.W           R2, R5, #0x40 ; '@'
26885A:  VST1.8          {D20-D21}, [R2]
26885E:  ADD.W           R2, R0, #0x34 ; '4'
268862:  VST1.32         {D24-D25}, [R2]
268866:  MOVS            R2, #0x54 ; 'T'
268868:  STR             R2, [R0,#(dword_6D6B28 - 0x6D6B04)]
26886A:  MOVS            R2, #0x59 ; 'Y'
26886C:  STR             R2, [R0,#(dword_6D6B2C - 0x6D6B04)]
26886E:  ADD.W           R2, R6, #0x50 ; 'P'
268872:  VST1.8          {D26-D27}, [R2]
268876:  ADD.W           R2, R5, #0x50 ; 'P'
26887A:  VST1.8          {D26-D27}, [R2]
26887E:  MOVS            R2, #0x62 ; 'b'
268880:  STRB.W          R3, [R6,#(byte_6D6FC4 - 0x6D6F64)]
268884:  STRB.W          R3, [R5,#(byte_6D7028 - 0x6D6FC8)]
268888:  STRB.W          LR, [R6,#(byte_6D6FC5 - 0x6D6F64)]
26888C:  STRB.W          LR, [R5,#(byte_6D7029 - 0x6D6FC8)]
268890:  STRB.W          R1, [R6,#(byte_6D6FC6 - 0x6D6F64)]
268894:  STRB.W          R1, [R5,#(byte_6D702A - 0x6D6FC8)]
268898:  MOVS            R1, #0x63 ; 'c'
26889A:  STRD.W          R2, R1, [R0,#(dword_6D6C14 - 0x6D6B04)]
26889E:  STRB.W          R12, [R6,#(byte_6D6FC7 - 0x6D6F64)]
2688A2:  STRB.W          R12, [R5,#(byte_6D702B - 0x6D6FC8)]
2688A6:  POP.W           {R11}
2688AA:  POP             {R4-R7,PC}
