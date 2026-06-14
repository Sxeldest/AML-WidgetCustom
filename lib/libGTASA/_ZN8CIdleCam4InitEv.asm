; =========================================================
; Game Engine Function: _ZN8CIdleCam4InitEv
; Address            : 0x3D34D0 - 0x3D3580
; =========================================================

3D34D0:  PUSH            {R4,R5,R7,LR}
3D34D2:  ADD             R7, SP, #8
3D34D4:  ADR             R1, dword_3D3580
3D34D6:  MOVW            R2, #0x8000
3D34DA:  VLD1.64         {D18-D19}, [R1@128]
3D34DE:  MOV             R1, #0x47AFC800
3D34E6:  MOVT            R2, #0x453B
3D34EA:  STR             R1, [R0,#0x28]
3D34EC:  MOVS            R1, #0x44FA0000
3D34F2:  ADD.W           R4, R0, #0x40 ; '@'
3D34F6:  STR             R1, [R0,#0x14]
3D34F8:  MOV.W           R1, #0x3F800000
3D34FC:  STR.W           R1, [R0,#0x88]
3D3500:  VMOV.I32        Q8, #0
3D3504:  STR.W           R2, [R0,#0x8C]
3D3508:  MOVS            R2, #0x447A0000
3D350E:  MOVW            R12, #0
3D3512:  STR             R2, [R0,#0x74]
3D3514:  MOV             R2, #0x463B8000
3D351C:  MOVS            R3, #0
3D351E:  STR             R2, [R0,#0x7C]
3D3520:  MOV             R2, #0x459C4000
3D3528:  MOVT            R12, #0x4170
3D352C:  STR             R2, [R0,#0x38]
3D352E:  MOV.W           R2, #0x40000000
3D3532:  STR.W           R2, [R0,#0x84]
3D3536:  MOVS            R2, #0
3D3538:  STRD.W          R2, R2, [R0,#0x90]
3D353C:  MOVT            R3, #0x428C
3D3540:  STR             R2, [R0,#0x18]
3D3542:  MOV.W           LR, #0xE
3D3546:  VST1.32         {D18-D19}, [R4]
3D354A:  MOVS            R4, #0xBF800000
3D3550:  MOVS            R5, #3
3D3552:  STRD.W          R2, R2, [R0,#0x1C]
3D3556:  STR             R4, [R0,#0x2C]
3D3558:  STR             R4, [R0,#0x34]
3D355A:  STR             R4, [R0,#0x3C]
3D355C:  STR             R3, [R0,#0x70]
3D355E:  STRD.W          LR, R2, [R0,#0x50]
3D3562:  STRD.W          R5, R4, [R0,#0x58]
3D3566:  STRD.W          R4, R4, [R0,#0x60]
3D356A:  STRD.W          R12, R3, [R0,#0x68]
3D356E:  STRH.W          R2, [R0,#0x78]
3D3572:  STR.W           R4, [R0,#0x80]
3D3576:  STR             R1, [R0,#0x24]
3D3578:  VST1.32         {D16-D17}, [R0]!
3D357C:  STR             R4, [R0]
3D357E:  POP             {R4,R5,R7,PC}
