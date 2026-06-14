; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo17CVehicleStructureC2Ev
; Address            : 0x386C84 - 0x386D06
; =========================================================

386C84:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CVehicleModelInfo::CVehicleStructure::CVehicleStructure(void)'
386C86:  ADD             R7, SP, #8
386C88:  MOVS            R1, #0xB4
386C8A:  MOV             R4, R0
386C8C:  BLX             j___aeabi_memclr8_0
386C90:  MOV.W           R0, #0xFFFFFFFF
386C94:  VMOV.I32        Q8, #0
386C98:  STR.W           R0, [R4,#0xF0]
386C9C:  STR.W           R0, [R4,#0xD0]
386CA0:  STR.W           R0, [R4,#0x110]
386CA4:  STR.W           R0, [R4,#0x130]
386CA8:  STR.W           R0, [R4,#0x150]
386CAC:  STR.W           R0, [R4,#0x170]
386CB0:  STR.W           R0, [R4,#0x190]
386CB4:  STR.W           R0, [R4,#0x1B0]
386CB8:  STR.W           R0, [R4,#0x1D0]
386CBC:  STR.W           R0, [R4,#0x1F0]
386CC0:  STR.W           R0, [R4,#0x210]
386CC4:  STR.W           R0, [R4,#0x230]
386CC8:  STR.W           R0, [R4,#0x250]
386CCC:  STR.W           R0, [R4,#0x270]
386CD0:  STR.W           R0, [R4,#0x290]
386CD4:  STR.W           R0, [R4,#0x2B0]
386CD8:  STR.W           R0, [R4,#0x2D0]
386CDC:  STR.W           R0, [R4,#0x2F0]
386CE0:  ADD.W           R0, R4, #0x314
386CE4:  VST1.32         {D16-D17}, [R0]
386CE8:  ADD.W           R0, R4, #0x304
386CEC:  VST1.32         {D16-D17}, [R0]
386CF0:  ADD.W           R0, R4, #0x2F4
386CF4:  VST1.32         {D16-D17}, [R0]
386CF8:  MOVS            R0, #0
386CFA:  STRB.W          R0, [R4,#0x324]
386CFE:  STR.W           R0, [R4,#0x328]
386D02:  MOV             R0, R4
386D04:  POP             {R4,R6,R7,PC}
