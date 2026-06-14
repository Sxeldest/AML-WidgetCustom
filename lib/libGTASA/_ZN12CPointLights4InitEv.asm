; =========================================================
; Game Engine Function: _ZN12CPointLights4InitEv
; Address            : 0x5B12F8 - 0x5B1358
; =========================================================

5B12F8:  PUSH            {R7,LR}
5B12FA:  MOV             R7, SP
5B12FC:  LDR             R0, =(_ZN12CPointLights15aCachedMapReadsE_ptr - 0x5B1306)
5B12FE:  MOV.W           R1, #0x180
5B1302:  ADD             R0, PC; _ZN12CPointLights15aCachedMapReadsE_ptr
5B1304:  LDR             R0, [R0]; CPointLights::aCachedMapReads ...
5B1306:  BLX.W           j___aeabi_memclr8_0
5B130A:  LDR             R0, =(_ZN12CPointLights15NextCachedValueE_ptr - 0x5B1318)
5B130C:  VMOV.I32        Q8, #0
5B1310:  LDR             R1, =(_ZN12CPointLights21aCachedMapReadResultsE_ptr - 0x5B131A)
5B1312:  MOVS            R2, #0
5B1314:  ADD             R0, PC; _ZN12CPointLights15NextCachedValueE_ptr
5B1316:  ADD             R1, PC; _ZN12CPointLights21aCachedMapReadResultsE_ptr
5B1318:  LDR             R0, [R0]; CPointLights::NextCachedValue ...
5B131A:  LDR             R1, [R1]; CPointLights::aCachedMapReadResults ...
5B131C:  STR             R2, [R0]; CPointLights::NextCachedValue
5B131E:  ADD.W           R0, R1, #0x70 ; 'p'
5B1322:  VST1.32         {D16-D17}, [R0]
5B1326:  ADD.W           R0, R1, #0x60 ; '`'
5B132A:  VST1.32         {D16-D17}, [R0]
5B132E:  ADD.W           R0, R1, #0x50 ; 'P'
5B1332:  VST1.32         {D16-D17}, [R0]
5B1336:  ADD.W           R0, R1, #0x40 ; '@'
5B133A:  VST1.32         {D16-D17}, [R0]
5B133E:  ADD.W           R0, R1, #0x30 ; '0'
5B1342:  VST1.32         {D16-D17}, [R0]
5B1346:  ADD.W           R0, R1, #0x20 ; ' '
5B134A:  VST1.32         {D16-D17}, [R0]
5B134E:  VST1.32         {D16-D17}, [R1]!
5B1352:  VST1.32         {D16-D17}, [R1]
5B1356:  POP             {R7,PC}
