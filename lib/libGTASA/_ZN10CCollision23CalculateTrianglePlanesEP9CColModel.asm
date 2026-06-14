; =========================================================
; Game Engine Function: _ZN10CCollision23CalculateTrianglePlanesEP9CColModel
; Address            : 0x2D97D8 - 0x2D97E2
; =========================================================

2D97D8:  LDR             R0, [R0,#0x2C]; this
2D97DA:  CMP             R0, #0
2D97DC:  IT NE
2D97DE:  BNE             _ZN10CCollision23CalculateTrianglePlanesEP14CCollisionData; CCollision::CalculateTrianglePlanes(CCollisionData *)
2D97E0:  BX              LR
