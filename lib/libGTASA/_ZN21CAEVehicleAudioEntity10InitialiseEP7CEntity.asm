; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity10InitialiseEP7CEntity
; Address            : 0x3AC5F0 - 0x3AC722
; =========================================================

3AC5F0:  PUSH            {R4-R7,LR}
3AC5F2:  ADD             R7, SP, #0xC
3AC5F4:  PUSH.W          {R11}
3AC5F8:  MOV             R4, R0
3AC5FA:  ADR.W           R0, dword_3AC900
3AC5FE:  MOV             R5, R1
3AC600:  VLD1.64         {D16-D17}, [R0@128]
3AC604:  MOVS            R0, #0
3AC606:  MOVW            R6, #0xFFFF
3AC60A:  MOVS            R1, #1
3AC60C:  STR             R5, [R4,#4]
3AC60E:  STR.W           R0, [R4,#0x144]
3AC612:  MOVW            R2, #0xC7E0
3AC616:  STR.W           R0, [R4,#0xAC]
3AC61A:  MOVT            R2, #0xFFFF
3AC61E:  STRH.W          R0, [R4,#0xA9]
3AC622:  STR.W           R0, [R4,#0xB8]
3AC626:  STRD.W          R0, R0, [R4,#0xCC]
3AC62A:  STR.W           R0, [R4,#0xD4]
3AC62E:  STR.W           R0, [R4,#0xA5]
3AC632:  STRH.W          R6, [R4,#0xE0]
3AC636:  STRH.W          R0, [R4,#0xB2]
3AC63A:  STRH.W          R0, [R4,#0x7C]
3AC63E:  STRH.W          R0, [R4,#0xB4]
3AC642:  STRB.W          R0, [R4,#0x244]
3AC646:  STRH.W          R0, [R4,#0xBC]
3AC64A:  STRH.W          R6, [R4,#0x148]
3AC64E:  STRH.W          R6, [R4,#0x14A]
3AC652:  STRH.W          R0, [R4,#0x154]
3AC656:  STRH.W          R0, [R4,#0x14E]
3AC65A:  STRH.W          R0, [R4,#0x14C]
3AC65E:  STRH.W          R0, [R4,#0xE4]
3AC662:  STRH.W          R1, [R4,#0xEC]
3AC666:  MOVS            R1, #2
3AC668:  STR.W           R0, [R4,#0xE8]
3AC66C:  STR.W           R0, [R4,#0xF0]
3AC670:  STR.W           R0, [R4,#0xF8]
3AC674:  STRH.W          R1, [R4,#0xF4]
3AC678:  MOVS            R1, #3
3AC67A:  STR.W           R0, [R4,#0x100]
3AC67E:  STRH.W          R1, [R4,#0xFC]
3AC682:  MOVS            R1, #4
3AC684:  STR.W           R0, [R4,#0x108]
3AC688:  STRH.W          R1, [R4,#0x104]
3AC68C:  MOVS            R1, #5
3AC68E:  STR.W           R0, [R4,#0x110]
3AC692:  STRH.W          R1, [R4,#0x10C]
3AC696:  MOVS            R1, #6
3AC698:  STR.W           R0, [R4,#0x118]
3AC69C:  STRH.W          R1, [R4,#0x114]
3AC6A0:  MOVS            R1, #7
3AC6A2:  STR.W           R0, [R4,#0x120]
3AC6A6:  STRH.W          R1, [R4,#0x11C]
3AC6AA:  MOVS            R1, #8
3AC6AC:  STR.W           R0, [R4,#0x128]
3AC6B0:  STRH.W          R1, [R4,#0x124]
3AC6B4:  MOVS            R1, #9
3AC6B6:  STR.W           R0, [R4,#0x130]
3AC6BA:  STRH.W          R1, [R4,#0x12C]
3AC6BE:  MOVS            R1, #0xA
3AC6C0:  STR.W           R0, [R4,#0x138]
3AC6C4:  STRH.W          R1, [R4,#0x134]
3AC6C8:  MOVS            R1, #0xB
3AC6CA:  STR.W           R0, [R4,#0x140]
3AC6CE:  STRH.W          R1, [R4,#0x13C]
3AC6D2:  ADD.W           R1, R4, #0x22C
3AC6D6:  VST1.32         {D16-D17}, [R1]
3AC6DA:  MOVS            R1, #0xC2C80000
3AC6E0:  STR.W           R0, [R4,#0x158]
3AC6E4:  STRH.W          R6, [R4,#0x156]
3AC6E8:  STRH.W          R6, [R4,#0x15C]
3AC6EC:  STR.W           R0, [R4,#0x160]
3AC6F0:  STRH.W          R6, [R4,#0x164]
3AC6F4:  STR.W           R0, [R4,#0x168]
3AC6F8:  STRH.W          R6, [R4,#0x16C]
3AC6FC:  STR.W           R0, [R4,#0x170]
3AC700:  STR.W           R1, [R4,#0xC4]
3AC704:  MOVS            R1, #0xBF800000
3AC70A:  STRD.W          R0, R0, [R4,#0x178]
3AC70E:  STR.W           R0, [R4,#0x180]
3AC712:  STR.W           R1, [R4,#0x248]
3AC716:  MOV.W           R1, #0x3F800000
3AC71A:  STRD.W          R1, R0, [R4,#0x23C]
3AC71E:  B.W             sub_3F660A
