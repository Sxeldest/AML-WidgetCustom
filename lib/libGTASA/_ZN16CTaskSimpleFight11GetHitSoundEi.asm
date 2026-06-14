; =========================================================
; Game Engine Function: _ZN16CTaskSimpleFight11GetHitSoundEi
; Address            : 0x4751F8 - 0x475228
; =========================================================

4751F8:  SUBS            R1, R0, #1; switch 8 cases
4751FA:  CMP             R1, #7
4751FC:  BHI             def_475200; jumptable 00475200 default case, case 2
4751FE:  MOVS            R0, #0x3D ; '='
475200:  TBB.W           [PC,R1]; switch jump
475204:  DCB 5; jump table for switch statement
475205:  DCB 4
475206:  DCB 6
475207:  DCB 8
475208:  DCB 0xA
475209:  DCB 0xC
47520A:  DCB 0xE
47520B:  DCB 0x10
47520C:  MOVS            R0, #0x3E ; '>'; jumptable 00475200 default case, case 2
47520E:  BX              LR; jumptable 00475200 case 1
475210:  MOVS            R0, #0x3F ; '?'; jumptable 00475200 case 3
475212:  BX              LR
475214:  MOVS            R0, #0x40 ; '@'; jumptable 00475200 case 4
475216:  BX              LR
475218:  MOVS            R0, #0x41 ; 'A'; jumptable 00475200 case 5
47521A:  BX              LR
47521C:  MOVS            R0, #0x42 ; 'B'; jumptable 00475200 case 6
47521E:  BX              LR
475220:  MOVS            R0, #0x43 ; 'C'; jumptable 00475200 case 7
475222:  BX              LR
475224:  MOVS            R0, #0x44 ; 'D'; jumptable 00475200 case 8
475226:  BX              LR
