; =========================================================
; Game Engine Function: _ZN9CTheZones18ResetZonesRevealedEv
; Address            : 0x42D14C - 0x42D18C
; =========================================================

42D14C:  LDR             R1, =(_ZN9CTheZones13ZonesRevealedE_ptr - 0x42D15A)
42D14E:  VMOV.I32        Q8, #0
42D152:  LDR             R0, =(_ZN9CTheZones12ZonesVisitedE_ptr - 0x42D15C)
42D154:  MOVS            R2, #0
42D156:  ADD             R1, PC; _ZN9CTheZones13ZonesRevealedE_ptr
42D158:  ADD             R0, PC; _ZN9CTheZones12ZonesVisitedE_ptr
42D15A:  LDR             R1, [R1]; CTheZones::ZonesRevealed ...
42D15C:  LDR             R0, [R0]; CTheZones::ZonesVisited ...
42D15E:  STR             R2, [R1]; CTheZones::ZonesRevealed
42D160:  ADD.W           R1, R0, #0x50 ; 'P'
42D164:  STR             R2, [R0,#(dword_98D2B2 - 0x98D252)]
42D166:  VST1.8          {D16-D17}, [R1]
42D16A:  ADD.W           R1, R0, #0x40 ; '@'
42D16E:  VST1.8          {D16-D17}, [R1]
42D172:  ADD.W           R1, R0, #0x30 ; '0'
42D176:  VST1.8          {D16-D17}, [R1]
42D17A:  ADD.W           R1, R0, #0x20 ; ' '
42D17E:  VST1.8          {D16-D17}, [R1]
42D182:  VST1.8          {D16-D17}, [R0]!
42D186:  VST1.8          {D16-D17}, [R0]
42D18A:  BX              LR
