; =========================================================
; Game Engine Function: _ZN6CGangs4SaveEv
; Address            : 0x48DB9C - 0x48DCFE
; =========================================================

48DB9C:  PUSH            {R4-R7,LR}
48DB9E:  ADD             R7, SP, #0xC
48DBA0:  PUSH.W          {R11}
48DBA4:  MOVS            R0, #0x10; byte_count
48DBA6:  BLX             malloc
48DBAA:  MOV             R4, R0
48DBAC:  LDR             R0, =(_ZN6CGangs4GangE_ptr - 0x48DBB4)
48DBAE:  MOVS            R1, #word_10; void *
48DBB0:  ADD             R0, PC; _ZN6CGangs4GangE_ptr
48DBB2:  LDR             R5, [R0]; CGangs::Gang ...
48DBB4:  MOV             R0, R4; this
48DBB6:  MOV             R6, R5
48DBB8:  VLD1.32         {D16-D17}, [R6]!
48DBBC:  VST1.8          {D16-D17}, [R4]
48DBC0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48DBC4:  MOV             R0, R4; p
48DBC6:  BLX             free
48DBCA:  MOVS            R0, #0x10; byte_count
48DBCC:  BLX             malloc
48DBD0:  VLD1.32         {D16-D17}, [R6]
48DBD4:  MOV             R4, R0
48DBD6:  MOVS            R1, #word_10; void *
48DBD8:  VST1.8          {D16-D17}, [R4]
48DBDC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48DBE0:  MOV             R0, R4; p
48DBE2:  BLX             free
48DBE6:  MOVS            R0, #0x10; byte_count
48DBE8:  BLX             malloc
48DBEC:  MOV             R4, R0
48DBEE:  ADD.W           R0, R5, #0x20 ; ' '
48DBF2:  VLD1.32         {D16-D17}, [R0]
48DBF6:  MOV             R0, R4; this
48DBF8:  MOVS            R1, #word_10; void *
48DBFA:  VST1.8          {D16-D17}, [R4]
48DBFE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48DC02:  MOV             R0, R4; p
48DC04:  BLX             free
48DC08:  MOVS            R0, #0x10; byte_count
48DC0A:  BLX             malloc
48DC0E:  MOV             R4, R0
48DC10:  ADD.W           R0, R5, #0x30 ; '0'
48DC14:  VLD1.32         {D16-D17}, [R0]
48DC18:  MOV             R0, R4; this
48DC1A:  MOVS            R1, #word_10; void *
48DC1C:  VST1.8          {D16-D17}, [R4]
48DC20:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48DC24:  MOV             R0, R4; p
48DC26:  BLX             free
48DC2A:  MOVS            R0, #0x10; byte_count
48DC2C:  BLX             malloc
48DC30:  MOV             R4, R0
48DC32:  ADD.W           R0, R5, #0x40 ; '@'
48DC36:  VLD1.32         {D16-D17}, [R0]
48DC3A:  MOV             R0, R4; this
48DC3C:  MOVS            R1, #word_10; void *
48DC3E:  VST1.8          {D16-D17}, [R4]
48DC42:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48DC46:  MOV             R0, R4; p
48DC48:  BLX             free
48DC4C:  MOVS            R0, #0x10; byte_count
48DC4E:  BLX             malloc
48DC52:  MOV             R4, R0
48DC54:  ADD.W           R0, R5, #0x50 ; 'P'
48DC58:  VLD1.32         {D16-D17}, [R0]
48DC5C:  MOV             R0, R4; this
48DC5E:  MOVS            R1, #word_10; void *
48DC60:  VST1.8          {D16-D17}, [R4]
48DC64:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48DC68:  MOV             R0, R4; p
48DC6A:  BLX             free
48DC6E:  MOVS            R0, #0x10; byte_count
48DC70:  BLX             malloc
48DC74:  MOV             R4, R0
48DC76:  ADD.W           R0, R5, #0x60 ; '`'
48DC7A:  VLD1.32         {D16-D17}, [R0]
48DC7E:  MOV             R0, R4; this
48DC80:  MOVS            R1, #word_10; void *
48DC82:  VST1.8          {D16-D17}, [R4]
48DC86:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48DC8A:  MOV             R0, R4; p
48DC8C:  BLX             free
48DC90:  MOVS            R0, #0x10; byte_count
48DC92:  BLX             malloc
48DC96:  MOV             R4, R0
48DC98:  ADD.W           R0, R5, #0x70 ; 'p'
48DC9C:  VLD1.32         {D16-D17}, [R0]
48DCA0:  MOV             R0, R4; this
48DCA2:  MOVS            R1, #word_10; void *
48DCA4:  VST1.8          {D16-D17}, [R4]
48DCA8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48DCAC:  MOV             R0, R4; p
48DCAE:  BLX             free
48DCB2:  MOVS            R0, #0x10; byte_count
48DCB4:  BLX             malloc
48DCB8:  MOV             R4, R0
48DCBA:  ADD.W           R0, R5, #0x80
48DCBE:  VLD1.32         {D16-D17}, [R0]
48DCC2:  MOV             R0, R4; this
48DCC4:  MOVS            R1, #word_10; void *
48DCC6:  VST1.8          {D16-D17}, [R4]
48DCCA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48DCCE:  MOV             R0, R4; p
48DCD0:  BLX             free
48DCD4:  MOVS            R0, #0x10; byte_count
48DCD6:  BLX             malloc
48DCDA:  MOV             R4, R0
48DCDC:  ADD.W           R0, R5, #0x90
48DCE0:  VLD1.32         {D16-D17}, [R0]
48DCE4:  MOV             R0, R4; this
48DCE6:  MOVS            R1, #word_10; void *
48DCE8:  VST1.8          {D16-D17}, [R4]
48DCEC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48DCF0:  MOV             R0, R4; p
48DCF2:  BLX             free
48DCF6:  MOVS            R0, #1
48DCF8:  POP.W           {R11}
48DCFC:  POP             {R4-R7,PC}
