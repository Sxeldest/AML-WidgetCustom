; =========================================================
; Game Engine Function: _ZN13CMovingThings4InitEv
; Address            : 0x5A620C - 0x5A6284
; =========================================================

5A620C:  PUSH            {R7,LR}
5A620E:  MOV             R7, SP
5A6210:  LDR             R0, =(_ZN12CPlaneTrails6aArrayE_ptr - 0x5A621A)
5A6212:  VMOV.I32        Q8, #0
5A6216:  ADD             R0, PC; _ZN12CPlaneTrails6aArrayE_ptr
5A6218:  LDR             R0, [R0]; CPlaneTrails::aArray ...
5A621A:  ADD.W           R1, R0, #0xF0
5A621E:  VST1.32         {D16-D17}, [R1]
5A6222:  ADD.W           R1, R0, #0xE0
5A6226:  VST1.32         {D16-D17}, [R1]
5A622A:  ADD.W           R1, R0, #0xD0
5A622E:  VST1.32         {D16-D17}, [R1]
5A6232:  ADD.W           R1, R0, #0x1F0
5A6236:  VST1.32         {D16-D17}, [R1]
5A623A:  ADD.W           R1, R0, #0x1E0
5A623E:  VST1.32         {D16-D17}, [R1]
5A6242:  ADD.W           R1, R0, #0x1D0
5A6246:  VST1.32         {D16-D17}, [R1]
5A624A:  ADD.W           R1, R0, #0x1C0
5A624E:  VST1.32         {D16-D17}, [R1]
5A6252:  ADD.W           R1, R0, #0xC0
5A6256:  VST1.32         {D16-D17}, [R1]
5A625A:  ADD.W           R1, R0, #0x2F0
5A625E:  VST1.32         {D16-D17}, [R1]
5A6262:  ADD.W           R1, R0, #0x2E0
5A6266:  VST1.32         {D16-D17}, [R1]
5A626A:  ADD.W           R1, R0, #0x2D0
5A626E:  ADD.W           R0, R0, #0x2C0; this
5A6272:  VST1.32         {D16-D17}, [R1]
5A6276:  VST1.32         {D16-D17}, [R0]
5A627A:  BLX.W           j__ZN12CPointLights4InitEv; CPointLights::Init(void)
5A627E:  POP.W           {R7,LR}
5A6282:  B               _ZN11CEscalators4InitEv; CEscalators::Init(void)
