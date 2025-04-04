

.text
.global suma_float

# Para los flotantes se utilizan los registros xmm (son de 128 bits)
# según System V:
# xmm0 función (xmm0, xmm1, xmm2, ....) En ensamblador
# float función (float1, float2, float3, ...) En lenguaje C

suma_float:
    addss %xmm1, %xmm0  # xmm0 = xmm0 + xmm1
    ret

# addss: Add Scalar single precision
# (Sumar un escalar de precisión simple, es decir float)

