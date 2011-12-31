cdef extern from "gl_include.h":
    # general opengl typedefs
    ctypedef unsigned short  wchar_t
    ctypedef unsigned int    GLenum
    ctypedef unsigned char   GLboolean
    ctypedef unsigned int    GLbitfield
    ctypedef void            GLvoid
    ctypedef signed char     GLbyte
    ctypedef short           GLshort
    ctypedef int             GLint
    ctypedef unsigned char   GLubyte
    ctypedef unsigned short  GLushort
    ctypedef unsigned int    GLuint
    ctypedef int             GLsizei
    ctypedef float           GLfloat
    ctypedef float           GLclampf
    ctypedef double          GLdouble
    ctypedef double          GLclampd

    # opengl defines
    int GL_FALSE
    int GL_TRUE

    int GL_BYTE
    int GL_UNSIGNED_BYTE
    int GL_SHORT
    int GL_UNSIGNED_SHORT
    int GL_INT
    int GL_UNSIGNED_INT
    int GL_FLOAT
    int GL_DOUBLE
    int GL_2_BYTES
    int GL_3_BYTES
    int GL_4_BYTES

    int GL_POINTS
    int GL_LINES
    int GL_LINE_LOOP
    int GL_LINE_STRIP
    int GL_TRIANGLES
    int GL_TRIANGLE_STRIP
    int GL_TRIANGLE_FAN
    int GL_QUADS
    int GL_QUAD_STRIP
    int GL_POLYGON

    int GL_VERTEX_ARRAY
    int GL_NORMAL_ARRAY
    int GL_COLOR_ARRAY
    int GL_INDEX_ARRAY
    int GL_TEXTURE_COORD_ARRAY
    int GL_EDGE_FLAG_ARRAY
    int GL_VERTEX_ARRAY_SIZE
    int GL_VERTEX_ARRAY_TYPE
    int GL_VERTEX_ARRAY_STRIDE
    int GL_NORMAL_ARRAY_TYPE
    int GL_NORMAL_ARRAY_STRIDE
    int GL_COLOR_ARRAY_SIZE
    int GL_COLOR_ARRAY_TYPE
    int GL_COLOR_ARRAY_STRIDE
    int GL_INDEX_ARRAY_TYPE
    int GL_INDEX_ARRAY_STRIDE
    int GL_TEXTURE_COORD_ARRAY_SIZE
    int GL_TEXTURE_COORD_ARRAY_TYPE
    int GL_TEXTURE_COORD_ARRAY_STRIDE
    int GL_EDGE_FLAG_ARRAY_STRIDE
    int GL_VERTEX_ARRAY_POINTER
    int GL_NORMAL_ARRAY_POINTER
    int GL_COLOR_ARRAY_POINTER
    int GL_INDEX_ARRAY_POINTER
    int GL_TEXTURE_COORD_ARRAY_POINTER
    int GL_EDGE_FLAG_ARRAY_POINTER
    int GL_V2F
    int GL_V3F
    int GL_C4UB_V2F
    int GL_C4UB_V3F
    int GL_C3F_V3F
    int GL_N3F_V3F
    int GL_C4F_N3F_V3F
    int GL_T2F_V3F
    int GL_T4F_V4F
    int GL_T2F_C4UB_V3F
    int GL_T2F_C3F_V3F
    int GL_T2F_N3F_V3F
    int GL_T2F_C4F_N3F_V3F
    int GL_T4F_C4F_N3F_V4F

    int GL_MATRIX_MODE
    int GL_MODELVIEW
    int GL_PROJECTION
    int GL_TEXTURE

    int GL_POINT_SMOOTH
    int GL_POINT_SIZE
    int GL_POINT_SIZE_GRANULARITY
    int GL_POINT_SIZE_RANGE

    int GL_LINE_SMOOTH
    int GL_LINE_STIPPLE
    int GL_LINE_STIPPLE_PATTERN
    int GL_LINE_STIPPLE_REPEAT
    int GL_LINE_WIDTH
    int GL_LINE_WIDTH_GRANULARITY
    int GL_LINE_WIDTH_RANGE

    int GL_POINT
    int GL_LINE
    int GL_FILL
    int GL_CW
    int GL_CCW
    int GL_FRONT
    int GL_BACK
    int GL_POLYGON_MODE
    int GL_POLYGON_SMOOTH
    int GL_POLYGON_STIPPLE
    int GL_EDGE_FLAG
    int GL_CULL_FACE
    int GL_CULL_FACE_MODE
    int GL_FRONT_FACE
    int GL_POLYGON_OFFSET_FACTOR
    int GL_POLYGON_OFFSET_UNITS
    int GL_POLYGON_OFFSET_POINT
    int GL_POLYGON_OFFSET_LINE
    int GL_POLYGON_OFFSET_FILL

    int GL_COMPILE
    int GL_COMPILE_AND_EXECUTE
    int GL_LIST_BASE
    int GL_LIST_INDEX
    int GL_LIST_MODE

    int GL_NEVER
    int GL_LESS
    int GL_EQUAL
    int GL_LEQUAL
    int GL_GREATER
    int GL_NOTEQUAL
    int GL_GEQUAL
    int GL_ALWAYS
    int GL_DEPTH_TEST
    int GL_DEPTH_BITS
    int GL_DEPTH_CLEAR_VALUE
    int GL_DEPTH_FUNC
    int GL_DEPTH_RANGE
    int GL_DEPTH_WRITEMASK
    int GL_DEPTH_COMPONENT

    int GL_LIGHTING
    int GL_LIGHT0
    int GL_LIGHT1
    int GL_LIGHT2
    int GL_LIGHT3
    int GL_LIGHT4
    int GL_LIGHT5
    int GL_LIGHT6
    int GL_LIGHT7
    int GL_SPOT_EXPONENT
    int GL_SPOT_CUTOFF
    int GL_CONSTANT_ATTENUATION
    int GL_LINEAR_ATTENUATION
    int GL_QUADRATIC_ATTENUATION
    int GL_AMBIENT
    int GL_DIFFUSE
    int GL_SPECULAR
    int GL_SHININESS
    int GL_EMISSION
    int GL_POSITION
    int GL_SPOT_DIRECTION
    int GL_AMBIENT_AND_DIFFUSE
    int GL_COLOR_INDEXES
    int GL_LIGHT_MODEL_TWO_SIDE
    int GL_LIGHT_MODEL_LOCAL_VIEWER
    int GL_LIGHT_MODEL_AMBIENT
    int GL_FRONT_AND_BACK
    int GL_SHADE_MODEL
    int GL_FLAT
    int GL_SMOOTH
    int GL_COLOR_MATERIAL
    int GL_COLOR_MATERIAL_FACE
    int GL_COLOR_MATERIAL_PARAMETER
    int GL_NORMALIZE

    int GL_CLIP_PLANE0
    int GL_CLIP_PLANE1
    int GL_CLIP_PLANE2
    int GL_CLIP_PLANE3
    int GL_CLIP_PLANE4
    int GL_CLIP_PLANE5

    int GL_ACCUM_RED_BITS
    int GL_ACCUM_GREEN_BITS
    int GL_ACCUM_BLUE_BITS
    int GL_ACCUM_ALPHA_BITS
    int GL_ACCUM_CLEAR_VALUE
    int GL_ACCUM
    int GL_ADD
    int GL_LOAD
    int GL_MULT
    int GL_RETURN

    int GL_ALPHA_TEST
    int GL_ALPHA_TEST_REF
    int GL_ALPHA_TEST_FUNC

    int GL_BLEND
    int GL_BLEND_SRC
    int GL_BLEND_DST
    int GL_ZERO
    int GL_ONE
    int GL_SRC_COLOR
    int GL_ONE_MINUS_SRC_COLOR
    int GL_SRC_ALPHA
    int GL_ONE_MINUS_SRC_ALPHA
    int GL_DST_ALPHA
    int GL_ONE_MINUS_DST_ALPHA
    int GL_DST_COLOR
    int GL_ONE_MINUS_DST_COLOR
    int GL_SRC_ALPHA_SATURATE
    int GL_CONSTANT_COLOR
    int GL_ONE_MINUS_CONSTANT_COLOR
    int GL_CONSTANT_ALPHA
    int GL_ONE_MINUS_CONSTANT_ALPHA

    int GL_FEEDBACK
    int GL_RENDER
    int GL_SELECT

    int GL_2D
    int GL_3D
    int GL_3D_COLOR
    int GL_3D_COLOR_TEXTURE
    int GL_4D_COLOR_TEXTURE
    int GL_POINT_TOKEN
    int GL_LINE_TOKEN
    int GL_LINE_RESET_TOKEN
    int GL_POLYGON_TOKEN
    int GL_BITMAP_TOKEN
    int GL_DRAW_PIXEL_TOKEN
    int GL_COPY_PIXEL_TOKEN
    int GL_PASS_THROUGH_TOKEN
    int GL_FEEDBACK_BUFFER_POINTER
    int GL_FEEDBACK_BUFFER_SIZE
    int GL_FEEDBACK_BUFFER_TYPE

    int GL_SELECTION_BUFFER_POINTER
    int GL_SELECTION_BUFFER_SIZE

    int GL_FOG
    int GL_FOG_MODE
    int GL_FOG_DENSITY
    int GL_FOG_COLOR
    int GL_FOG_INDEX
    int GL_FOG_START
    int GL_FOG_END
    int GL_LINEAR
    int GL_EXP
    int GL_EXP2

    int GL_LOGIC_OP
    int GL_INDEX_LOGIC_OP
    int GL_COLOR_LOGIC_OP
    int GL_LOGIC_OP_MODE
    int GL_CLEAR
    int GL_SET
    int GL_COPY
    int GL_COPY_INVERTED
    int GL_NOOP
    int GL_INVERT
    int GL_AND
    int GL_NAND
    int GL_OR
    int GL_NOR
    int GL_XOR
    int GL_EQUIV
    int GL_AND_REVERSE
    int GL_AND_INVERTED
    int GL_OR_REVERSE
    int GL_OR_INVERTED

    int GL_STENCIL_TEST
    int GL_STENCIL_WRITEMASK
    int GL_STENCIL_BITS
    int GL_STENCIL_FUNC
    int GL_STENCIL_VALUE_MASK
    int GL_STENCIL_REF
    int GL_STENCIL_FAIL
    int GL_STENCIL_PASS_DEPTH_PASS
    int GL_STENCIL_PASS_DEPTH_FAIL
    int GL_STENCIL_CLEAR_VALUE
    int GL_STENCIL_INDEX
    int GL_KEEP
    int GL_REPLACE
    int GL_INCR
    int GL_DECR

    int GL_NONE
    int GL_LEFT
    int GL_RIGHT

    int GL_FRONT_LEFT
    int GL_FRONT_RIGHT
    int GL_BACK_LEFT
    int GL_BACK_RIGHT
    int GL_AUX0
    int GL_AUX1
    int GL_AUX2
    int GL_AUX3
    int GL_COLOR_INDEX
    int GL_RED
    int GL_GREEN
    int GL_BLUE
    int GL_ALPHA
    int GL_LUMINANCE
    int GL_LUMINANCE_ALPHA
    int GL_ALPHA_BITS
    int GL_RED_BITS
    int GL_GREEN_BITS
    int GL_BLUE_BITS
    int GL_INDEX_BITS
    int GL_SUBPIXEL_BITS
    int GL_AUX_BUFFERS
    int GL_READ_BUFFER
    int GL_DRAW_BUFFER
    int GL_DOUBLEBUFFER
    int GL_STEREO
    int GL_BITMAP
    int GL_COLOR
    int GL_DEPTH
    int GL_STENCIL
    int GL_DITHER
    int GL_RGB
    int GL_RGBA

    int GL_MAX_LIST_NESTING
    int GL_MAX_ATTRIB_STACK_DEPTH
    int GL_MAX_MODELVIEW_STACK_DEPTH
    int GL_MAX_NAME_STACK_DEPTH
    int GL_MAX_PROJECTION_STACK_DEPTH
    int GL_MAX_TEXTURE_STACK_DEPTH
    int GL_MAX_EVAL_ORDER
    int GL_MAX_LIGHTS
    int GL_MAX_CLIP_PLANES
    int GL_MAX_TEXTURE_SIZE
    int GL_MAX_PIXEL_MAP_TABLE
    int GL_MAX_VIEWPORT_DIMS
    int GL_MAX_CLIENT_ATTRIB_STACK_DEPTH

    int GL_ATTRIB_STACK_DEPTH
    int GL_CLIENT_ATTRIB_STACK_DEPTH
    int GL_COLOR_CLEAR_VALUE
    int GL_COLOR_WRITEMASK
    int GL_CURRENT_INDEX
    int GL_CURRENT_COLOR
    int GL_CURRENT_NORMAL
    int GL_CURRENT_RASTER_COLOR
    int GL_CURRENT_RASTER_DISTANCE
    int GL_CURRENT_RASTER_INDEX
    int GL_CURRENT_RASTER_POSITION
    int GL_CURRENT_RASTER_TEXTURE_COORDS
    int GL_CURRENT_RASTER_POSITION_VALID
    int GL_CURRENT_TEXTURE_COORDS
    int GL_INDEX_CLEAR_VALUE
    int GL_INDEX_MODE
    int GL_INDEX_WRITEMASK
    int GL_MODELVIEW_MATRIX
    int GL_MODELVIEW_STACK_DEPTH
    int GL_NAME_STACK_DEPTH
    int GL_PROJECTION_MATRIX
    int GL_PROJECTION_STACK_DEPTH
    int GL_RENDER_MODE
    int GL_RGBA_MODE
    int GL_TEXTURE_MATRIX
    int GL_TEXTURE_STACK_DEPTH
    int GL_VIEWPORT

    int GL_AUTO_NORMAL
    int GL_MAP1_COLOR_4
    int GL_MAP1_GRID_DOMAIN
    int GL_MAP1_GRID_SEGMENTS
    int GL_MAP1_INDEX
    int GL_MAP1_NORMAL
    int GL_MAP1_TEXTURE_COORD_1
    int GL_MAP1_TEXTURE_COORD_2
    int GL_MAP1_TEXTURE_COORD_3
    int GL_MAP1_TEXTURE_COORD_4
    int GL_MAP1_VERTEX_3
    int GL_MAP1_VERTEX_4
    int GL_MAP2_COLOR_4
    int GL_MAP2_GRID_DOMAIN
    int GL_MAP2_GRID_SEGMENTS
    int GL_MAP2_INDEX
    int GL_MAP2_NORMAL
    int GL_MAP2_TEXTURE_COORD_1
    int GL_MAP2_TEXTURE_COORD_2
    int GL_MAP2_TEXTURE_COORD_3
    int GL_MAP2_TEXTURE_COORD_4
    int GL_MAP2_VERTEX_3
    int GL_MAP2_VERTEX_4
    int GL_COEFF
    int GL_DOMAIN
    int GL_ORDER

    int GL_FOG_HINT
    int GL_LINE_SMOOTH_HINT
    int GL_PERSPECTIVE_CORRECTION_HINT
    int GL_POINT_SMOOTH_HINT
    int GL_POLYGON_SMOOTH_HINT
    int GL_DONT_CARE
    int GL_FASTEST
    int GL_NICEST

    int GL_SCISSOR_TEST
    int GL_SCISSOR_BOX

    int GL_MAP_COLOR
    int GL_MAP_STENCIL
    int GL_INDEX_SHIFT
    int GL_INDEX_OFFSET
    int GL_RED_SCALE
    int GL_RED_BIAS
    int GL_GREEN_SCALE
    int GL_GREEN_BIAS
    int GL_BLUE_SCALE
    int GL_BLUE_BIAS
    int GL_ALPHA_SCALE
    int GL_ALPHA_BIAS
    int GL_DEPTH_SCALE
    int GL_DEPTH_BIAS
    int GL_PIXEL_MAP_S_TO_S_SIZE
    int GL_PIXEL_MAP_I_TO_I_SIZE
    int GL_PIXEL_MAP_I_TO_R_SIZE
    int GL_PIXEL_MAP_I_TO_G_SIZE
    int GL_PIXEL_MAP_I_TO_B_SIZE
    int GL_PIXEL_MAP_I_TO_A_SIZE
    int GL_PIXEL_MAP_R_TO_R_SIZE
    int GL_PIXEL_MAP_G_TO_G_SIZE
    int GL_PIXEL_MAP_B_TO_B_SIZE
    int GL_PIXEL_MAP_A_TO_A_SIZE
    int GL_PIXEL_MAP_S_TO_S
    int GL_PIXEL_MAP_I_TO_I
    int GL_PIXEL_MAP_I_TO_R
    int GL_PIXEL_MAP_I_TO_G
    int GL_PIXEL_MAP_I_TO_B
    int GL_PIXEL_MAP_I_TO_A
    int GL_PIXEL_MAP_R_TO_R
    int GL_PIXEL_MAP_G_TO_G
    int GL_PIXEL_MAP_B_TO_B
    int GL_PIXEL_MAP_A_TO_A
    int GL_PACK_ALIGNMENT
    int GL_PACK_LSB_FIRST
    int GL_PACK_ROW_LENGTH
    int GL_PACK_SKIP_PIXELS
    int GL_PACK_SKIP_ROWS
    int GL_PACK_SWAP_BYTES
    int GL_UNPACK_ALIGNMENT
    int GL_UNPACK_LSB_FIRST
    int GL_UNPACK_ROW_LENGTH
    int GL_UNPACK_SKIP_PIXELS
    int GL_UNPACK_SKIP_ROWS
    int GL_UNPACK_SWAP_BYTES
    int GL_ZOOM_X
    int GL_ZOOM_Y

    int GL_TEXTURE_ENV
    int GL_TEXTURE_ENV_MODE
    int GL_TEXTURE_1D
    int GL_TEXTURE_2D
    int GL_TEXTURE_WRAP_S
    int GL_TEXTURE_WRAP_T
    int GL_TEXTURE_MAG_FILTER
    int GL_TEXTURE_MIN_FILTER
    int GL_TEXTURE_ENV_COLOR
    int GL_TEXTURE_GEN_S
    int GL_TEXTURE_GEN_T
    int GL_TEXTURE_GEN_MODE
    int GL_TEXTURE_BORDER_COLOR
    int GL_TEXTURE_WIDTH
    int GL_TEXTURE_HEIGHT
    int GL_TEXTURE_BORDER
    int GL_TEXTURE_COMPONENTS
    int GL_TEXTURE_RED_SIZE
    int GL_TEXTURE_GREEN_SIZE
    int GL_TEXTURE_BLUE_SIZE
    int GL_TEXTURE_ALPHA_SIZE
    int GL_TEXTURE_LUMINANCE_SIZE
    int GL_TEXTURE_INTENSITY_SIZE
    int GL_NEAREST_MIPMAP_NEAREST
    int GL_NEAREST_MIPMAP_LINEAR
    int GL_LINEAR_MIPMAP_NEAREST
    int GL_LINEAR_MIPMAP_LINEAR
    int GL_OBJECT_LINEAR
    int GL_OBJECT_PLANE
    int GL_EYE_LINEAR
    int GL_EYE_PLANE
    int GL_SPHERE_MAP
    int GL_DECAL
    int GL_MODULATE
    int GL_NEAREST
    int GL_REPEAT
    int GL_CLAMP
    int GL_S
    int GL_T
    int GL_R
    int GL_Q
    int GL_TEXTURE_GEN_R
    int GL_TEXTURE_GEN_Q

    int GL_VENDOR
    int GL_RENDERER
    int GL_VERSION
    int GL_EXTENSIONS

    int GL_NO_ERROR
    int GL_INVALID_VALUE
    int GL_INVALID_ENUM
    int GL_INVALID_OPERATION
    int GL_STACK_OVERFLOW
    int GL_STACK_UNDERFLOW
    int GL_OUT_OF_MEMORY

    int GL_CURRENT_BIT
    int GL_POINT_BIT
    int GL_LINE_BIT
    int GL_POLYGON_BIT
    int GL_POLYGON_STIPPLE_BIT
    int GL_PIXEL_MODE_BIT
    int GL_LIGHTING_BIT
    int GL_FOG_BIT
    int GL_DEPTH_BUFFER_BIT
    int GL_ACCUM_BUFFER_BIT
    int GL_STENCIL_BUFFER_BIT
    int GL_VIEWPORT_BIT
    int GL_TRANSFORM_BIT
    int GL_ENABLE_BIT
    int GL_COLOR_BUFFER_BIT
    int GL_HINT_BIT
    int GL_EVAL_BIT
    int GL_LIST_BIT
    int GL_TEXTURE_BIT
    int GL_SCISSOR_BIT
    int GL_ALL_ATTRIB_BITS

    # opengl 1.1 defines
    int GL_PROXY_TEXTURE_1D
    int GL_PROXY_TEXTURE_2D
    int GL_TEXTURE_PRIORITY
    int GL_TEXTURE_RESIDENT
    int GL_TEXTURE_BINDING_1D
    int GL_TEXTURE_BINDING_2D
    int GL_TEXTURE_INTERNAL_FORMAT
    int GL_ALPHA4
    int GL_ALPHA8
    int GL_ALPHA12
    int GL_ALPHA16
    int GL_LUMINANCE4
    int GL_LUMINANCE8
    int GL_LUMINANCE12
    int GL_LUMINANCE16
    int GL_LUMINANCE4_ALPHA4
    int GL_LUMINANCE6_ALPHA2
    int GL_LUMINANCE8_ALPHA8
    int GL_LUMINANCE12_ALPHA4
    int GL_LUMINANCE12_ALPHA12
    int GL_LUMINANCE16_ALPHA16
    int GL_INTENSITY
    int GL_INTENSITY4
    int GL_INTENSITY8
    int GL_INTENSITY12
    int GL_INTENSITY16
    int GL_R3_G3_B2
    int GL_RGB4
    int GL_RGB5
    int GL_RGB8
    int GL_RGB10
    int GL_RGB12
    int GL_RGB16
    int GL_RGBA2
    int GL_RGBA4
    int GL_RGB5_A1
    int GL_RGBA8
    int GL_RGB10_A2
    int GL_RGBA12
    int GL_RGBA16
    int GL_CLIENT_PIXEL_STORE_BIT
    int GL_CLIENT_VERTEX_ARRAY_BIT
    int GL_ALL_CLIENT_ATTRIB_BITS
    int GL_CLIENT_ALL_ATTRIB_BITS

    # opengl functions
    cdef void glClearIndex(GLfloat c)
    cdef void glClearColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)
    cdef void glClear(GLbitfield mask)
    cdef void glIndexMask(GLuint mask)
    cdef void glColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha)
    cdef void glAlphaFunc(GLenum func, GLclampf ref)
    cdef void glBlendFunc(GLenum sfactor, GLenum dfactor)
    cdef void glLogicOp(GLenum opcode)
    cdef void glCullFace(GLenum mode)
    cdef void glFrontFace(GLenum mode)
    cdef void glPointSize(GLfloat size)
    cdef void glLineWidth(GLfloat width)
    cdef void glLineStipple(GLint factor, GLushort pattern)
    cdef void glPolygonMode(GLenum face, GLenum mode)
    cdef void glPolygonOffset(GLfloat factor, GLfloat units)
    cdef void glPolygonStipple(GLubyte *mask)
    cdef void glGetPolygonStipple(GLubyte *mask)
    cdef void glEdgeFlag(GLboolean flag)
    cdef void glEdgeFlagv(GLboolean *flag)
    cdef void glScissor(GLint x, GLint y, GLsizei width, GLsizei height)
    cdef void glClipPlane(GLenum plane, GLdouble *equation)
    cdef void glGetClipPlane(GLenum plane, GLdouble *equation)
    cdef void glDrawBuffer(GLenum mode)
    cdef void glReadBuffer(GLenum mode)
    cdef void glEnable(GLenum cap)
    cdef void glDisable(GLenum cap)
    cdef GLboolean glIsEnabled(GLenum cap)
    cdef void glEnableClientState(GLenum cap)
    cdef void glDisableClientState(GLenum cap)
    cdef void glGetBooleanv(GLenum pname, GLboolean *params)
    cdef void glGetDoublev(GLenum pname, GLdouble *params)
    cdef void glGetFloatv(GLenum pname, GLfloat *params)
    cdef void glGetIntegerv(GLenum pname, GLint *params)
    cdef void glPushAttrib(GLbitfield mask)
    cdef void glPopAttrib()
    cdef void glPushClientAttrib(GLbitfield mask)
    cdef void glPopClientAttrib()
    cdef GLint glRenderMode(GLenum mode)
    cdef GLenum glGetError()
    cdef GLubyte* glGetString(GLenum name)
    cdef void glFinish()
    cdef void glFlush()
    cdef void glHint(GLenum target, GLenum mode)

    cdef void glClearDepth(GLclampd depth)
    cdef void glDepthFunc(GLenum func)
    cdef void glDepthMask(GLboolean flag)
    cdef void glDepthRange(GLclampd near_val, GLclampd far_val)

    cdef void glClearAccum(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha)
    cdef void glAccum(GLenum op, GLfloat value)

    cdef void glMatrixMode(GLenum mode)
    cdef void glOrtho(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble near_val, GLdouble far_val)
    cdef void glFrustum(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble near_val, GLdouble far_val)
    cdef void glViewport(GLint x, GLint y, GLsizei width, GLsizei height)
    cdef void glPushMatrix()
    cdef void glPopMatrix()
    cdef void glLoadIdentity()
    cdef void glLoadMatrixd(GLdouble *m)
    cdef void glLoadMatrixf(GLfloat *m)
    cdef void glMultMatrixd(GLdouble *m)
    cdef void glMultMatrixf(GLfloat *m)
    cdef void glRotated(GLdouble angle, GLdouble x, GLdouble y, GLdouble z)
    cdef void glRotatef(GLfloat angle, GLfloat x, GLfloat y, GLfloat z)
    cdef void glScaled(GLdouble x, GLdouble y, GLdouble z)
    cdef void glScalef(GLfloat x, GLfloat y, GLfloat z)
    cdef void glTranslated(GLdouble x, GLdouble y, GLdouble z)
    cdef void glTranslatef(GLfloat x, GLfloat y, GLfloat z)

    cdef GLboolean glIsList(GLuint list)
    cdef void glDeleteLists(GLuint list, GLsizei range)
    cdef GLuint glGenLists(GLsizei range)
    cdef void glNewList(GLuint list, GLenum mode)
    cdef void glEndList()
    cdef void glCallList(GLuint list)
    cdef void glCallLists(GLsizei n, GLenum type, GLvoid *lists)
    cdef void glListBase(GLuint base)

    cdef void glBegin(GLenum mode)
    cdef void glEnd()
    cdef void glVertex2d(GLdouble x, GLdouble y)
    cdef void glVertex2f(GLfloat x, GLfloat y)
    cdef void glVertex2i(GLint x, GLint y)
    cdef void glVertex2s(GLshort x, GLshort y)
    cdef void glVertex3d(GLdouble x, GLdouble y, GLdouble z)
    cdef void glVertex3f(GLfloat x, GLfloat y, GLfloat z)
    cdef void glVertex3i(GLint x, GLint y, GLint z)
    cdef void glVertex3s(GLshort x, GLshort y, GLshort z)
    cdef void glVertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w)
    cdef void glVertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w)
    cdef void glVertex4i(GLint x, GLint y, GLint z, GLint w)
    cdef void glVertex4s(GLshort x, GLshort y, GLshort z, GLshort w)
    cdef void glVertex2dv(GLdouble *v)
    cdef void glVertex2fv(GLfloat *v)
    cdef void glVertex2iv(GLint *v)
    cdef void glVertex2sv(GLshort *v)
    cdef void glVertex3dv(GLdouble *v)
    cdef void glVertex3fv(GLfloat *v)
    cdef void glVertex3iv(GLint *v)
    cdef void glVertex3sv(GLshort *v)
    cdef void glVertex4dv(GLdouble *v)
    cdef void glVertex4fv(GLfloat *v)
    cdef void glVertex4iv(GLint *v)
    cdef void glVertex4sv(GLshort *v)
    cdef void glNormal3b(GLbyte nx, GLbyte ny, GLbyte nz)
    cdef void glNormal3d(GLdouble nx, GLdouble ny, GLdouble nz)
    cdef void glNormal3f(GLfloat nx, GLfloat ny, GLfloat nz)
    cdef void glNormal3i(GLint nx, GLint ny, GLint nz)
    cdef void glNormal3s(GLshort nx, GLshort ny, GLshort nz)
    cdef void glNormal3bv(GLbyte *v)
    cdef void glNormal3dv(GLdouble *v)
    cdef void glNormal3fv(GLfloat *v)
    cdef void glNormal3iv(GLint *v)
    cdef void glNormal3sv(GLshort *v)
    cdef void glIndexd(GLdouble c)
    cdef void glIndexf(GLfloat c)
    cdef void glIndexi(GLint c)
    cdef void glIndexs(GLshort c)
    cdef void glIndexub(GLubyte c)
    cdef void glIndexdv(GLdouble *c)
    cdef void glIndexfv(GLfloat *c)
    cdef void glIndexiv(GLint *c)
    cdef void glIndexsv(GLshort *c)
    cdef void glIndexubv(GLubyte *c)
    cdef void glColor3b(GLbyte red, GLbyte green, GLbyte blue)
    cdef void glColor3d(GLdouble red, GLdouble green, GLdouble blue)
    cdef void glColor3f(GLfloat red, GLfloat green, GLfloat blue)
    cdef void glColor3i(GLint red, GLint green, GLint blue)
    cdef void glColor3s(GLshort red, GLshort green, GLshort blue)
    cdef void glColor3ub(GLubyte red, GLubyte green, GLubyte blue)
    cdef void glColor3ui(GLuint red, GLuint green, GLuint blue)
    cdef void glColor3us(GLushort red, GLushort green, GLushort blue)
    cdef void glColor4b(GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha)
    cdef void glColor4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha)
    cdef void glColor4f(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha)
    cdef void glColor4i(GLint red, GLint green, GLint blue, GLint alpha)
    cdef void glColor4s(GLshort red, GLshort green, GLshort blue, GLshort alpha)
    cdef void glColor4ub(GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha)
    cdef void glColor4ui(GLuint red, GLuint green, GLuint blue, GLuint alpha)
    cdef void glColor4us(GLushort red, GLushort green, GLushort blue, GLushort alpha)
    cdef void glColor3bv(GLbyte *v)
    cdef void glColor3dv(GLdouble *v)
    cdef void glColor3fv(GLfloat *v)
    cdef void glColor3iv(GLint *v)
    cdef void glColor3sv(GLshort *v)
    cdef void glColor3ubv(GLubyte *v)
    cdef void glColor3uiv(GLuint *v)
    cdef void glColor3usv(GLushort *v)
    cdef void glColor4bv(GLbyte *v)
    cdef void glColor4dv(GLdouble *v)
    cdef void glColor4fv(GLfloat *v)
    cdef void glColor4iv(GLint *v)
    cdef void glColor4sv(GLshort *v)
    cdef void glColor4ubv(GLubyte *v)
    cdef void glColor4uiv(GLuint *v)
    cdef void glColor4usv(GLushort *v)
    cdef void glTexCoord1d(GLdouble s)
    cdef void glTexCoord1f(GLfloat s)
    cdef void glTexCoord1i(GLint s)
    cdef void glTexCoord1s(GLshort s)
    cdef void glTexCoord2d(GLdouble s, GLdouble t)
    cdef void glTexCoord2f(GLfloat s, GLfloat t)
    cdef void glTexCoord2i(GLint s, GLint t)
    cdef void glTexCoord2s(GLshort s, GLshort t)
    cdef void glTexCoord3d(GLdouble s, GLdouble t, GLdouble r)
    cdef void glTexCoord3f(GLfloat s, GLfloat t, GLfloat r)
    cdef void glTexCoord3i(GLint s, GLint t, GLint r)
    cdef void glTexCoord3s(GLshort s, GLshort t, GLshort r)
    cdef void glTexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q)
    cdef void glTexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q)
    cdef void glTexCoord4i(GLint s, GLint t, GLint r, GLint q)
    cdef void glTexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q)
    cdef void glTexCoord1dv(GLdouble *v)
    cdef void glTexCoord1fv(GLfloat *v)
    cdef void glTexCoord1iv(GLint *v)
    cdef void glTexCoord1sv(GLshort *v)
    cdef void glTexCoord2dv(GLdouble *v)
    cdef void glTexCoord2fv(GLfloat *v)
    cdef void glTexCoord2iv(GLint *v)
    cdef void glTexCoord2sv(GLshort *v)
    cdef void glTexCoord3dv(GLdouble *v)
    cdef void glTexCoord3fv(GLfloat *v)
    cdef void glTexCoord3iv(GLint *v)
    cdef void glTexCoord3sv(GLshort *v)
    cdef void glTexCoord4dv(GLdouble *v)
    cdef void glTexCoord4fv(GLfloat *v)
    cdef void glTexCoord4iv(GLint *v)
    cdef void glTexCoord4sv(GLshort *v)
    cdef void glRasterPos2d(GLdouble x, GLdouble y)
    cdef void glRasterPos2f(GLfloat x, GLfloat y)
    cdef void glRasterPos2i(GLint x, GLint y)
    cdef void glRasterPos2s(GLshort x, GLshort y)
    cdef void glRasterPos3d(GLdouble x, GLdouble y, GLdouble z)
    cdef void glRasterPos3f(GLfloat x, GLfloat y, GLfloat z)
    cdef void glRasterPos3i(GLint x, GLint y, GLint z)
    cdef void glRasterPos3s(GLshort x, GLshort y, GLshort z)
    cdef void glRasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w)
    cdef void glRasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w)
    cdef void glRasterPos4i(GLint x, GLint y, GLint z, GLint w)
    cdef void glRasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w)
    cdef void glRasterPos2dv(GLdouble *v)
    cdef void glRasterPos2fv(GLfloat *v)
    cdef void glRasterPos2iv(GLint *v)
    cdef void glRasterPos2sv(GLshort *v)
    cdef void glRasterPos3dv(GLdouble *v)
    cdef void glRasterPos3fv(GLfloat *v)
    cdef void glRasterPos3iv(GLint *v)
    cdef void glRasterPos3sv(GLshort *v)
    cdef void glRasterPos4dv(GLdouble *v)
    cdef void glRasterPos4fv(GLfloat *v)
    cdef void glRasterPos4iv(GLint *v)
    cdef void glRasterPos4sv(GLshort *v)
    cdef void glRectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2)
    cdef void glRectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2)
    cdef void glRecti(GLint x1, GLint y1, GLint x2, GLint y2)
    cdef void glRects(GLshort x1, GLshort y1, GLshort x2, GLshort y2)
    cdef void glRectdv(GLdouble *v1, GLdouble *v2)
    cdef void glRectfv(GLfloat *v1, GLfloat *v2)
    cdef void glRectiv(GLint *v1, GLint *v2)
    cdef void glRectsv(GLshort *v1, GLshort *v2)

    cdef void glShadeModel(GLenum mode)
    cdef void glLightf(GLenum light, GLenum pname, GLfloat param)
    cdef void glLighti(GLenum light, GLenum pname, GLint param)
    cdef void glLightfv(GLenum light, GLenum pname, GLfloat *params)
    cdef void glLightiv(GLenum light, GLenum pname, GLint *params)
    cdef void glGetLightfv(GLenum light, GLenum pname, GLfloat *params)
    cdef void glGetLightiv(GLenum light, GLenum pname, GLint *params)
    cdef void glLightModelf(GLenum pname, GLfloat param)
    cdef void glLightModeli(GLenum pname, GLint param)
    cdef void glLightModelfv(GLenum pname, GLfloat *params)
    cdef void glLightModeliv(GLenum pname, GLint *params)
    cdef void glMaterialf(GLenum face, GLenum pname, GLfloat param)
    cdef void glMateriali(GLenum face, GLenum pname, GLint param)
    cdef void glMaterialfv(GLenum face, GLenum pname, GLfloat *params)
    cdef void glMaterialiv(GLenum face, GLenum pname, GLint *params)
    cdef void glGetMaterialfv(GLenum face, GLenum pname, GLfloat *params)
    cdef void glGetMaterialiv(GLenum face, GLenum pname, GLint *params)
    cdef void glColorMaterial(GLenum face, GLenum mode)

    cdef void glPixelZoom(GLfloat xfactor, GLfloat yfactor)
    cdef void glPixelStoref(GLenum pname, GLfloat param)
    cdef void glPixelStorei(GLenum pname, GLint param)
    cdef void glPixelTransferf(GLenum pname, GLfloat param)
    cdef void glPixelTransferi(GLenum pname, GLint param)
    cdef void glPixelMapfv(GLenum map, GLint mapsize, GLfloat *values)
    cdef void glPixelMapuiv(GLenum map, GLint mapsize, GLuint *values)
    cdef void glPixelMapusv(GLenum map, GLint mapsize, GLushort *values)
    cdef void glGetPixelMapfv(GLenum map, GLfloat *values)
    cdef void glGetPixelMapuiv(GLenum map, GLuint *values)
    cdef void glGetPixelMapusv(GLenum map, GLushort *values)
    cdef void glBitmap(GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, GLubyte *bitmap)
    cdef void glReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels)
    cdef void glDrawPixels(GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels)
    cdef void glCopyPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum type)

    cdef void glStencilFunc(GLenum func, GLint ref, GLuint mask)
    cdef void glStencilMask(GLuint mask)
    cdef void glStencilOp(GLenum fail, GLenum zfail, GLenum zpass)
    cdef void glClearStencil(GLint s)

    cdef void glTexGend(GLenum coord, GLenum pname, GLdouble param)
    cdef void glTexGenf(GLenum coord, GLenum pname, GLfloat param)
    cdef void glTexGeni(GLenum coord, GLenum pname, GLint param)
    cdef void glTexGendv(GLenum coord, GLenum pname, GLdouble *params)
    cdef void glTexGenfv(GLenum coord, GLenum pname, GLfloat *params)
    cdef void glTexGeniv(GLenum coord, GLenum pname, GLint *params)
    cdef void glGetTexGendv(GLenum coord, GLenum pname, GLdouble *params)
    cdef void glGetTexGenfv(GLenum coord, GLenum pname, GLfloat *params)
    cdef void glGetTexGeniv(GLenum coord, GLenum pname, GLint *params)
    cdef void glTexEnvf(GLenum target, GLenum pname, GLfloat param)
    cdef void glTexEnvi(GLenum target, GLenum pname, GLint param)
    cdef void glTexEnvfv(GLenum target, GLenum pname, GLfloat *params)
    cdef void glTexEnviv(GLenum target, GLenum pname, GLint *params)
    cdef void glGetTexEnvfv(GLenum target, GLenum pname, GLfloat *params)
    cdef void glGetTexEnviv(GLenum target, GLenum pname, GLint *params)
    cdef void glTexParameterf(GLenum target, GLenum pname, GLfloat param)
    cdef void glTexParameteri(GLenum target, GLenum pname, GLint param)
    cdef void glTexParameterfv(GLenum target, GLenum pname, GLfloat *params)
    cdef void glTexParameteriv(GLenum target, GLenum pname, GLint *params)
    cdef void glGetTexParameterfv(GLenum target, GLenum pname, GLfloat *params)
    cdef void glGetTexParameteriv(GLenum target, GLenum pname, GLint *params)
    cdef void glGetTexLevelParameterfv(GLenum target, GLint level, GLenum pname, GLfloat *params)
    cdef void glGetTexLevelParameteriv(GLenum target, GLint level, GLenum pname, GLint *params)
    cdef void glTexImage1D(GLenum target, GLint level, GLint internalFormat, GLsizei width, GLint border, GLenum format, GLenum type, GLvoid *pixels)
    cdef void glTexImage2D(GLenum target, GLint level, GLint internalFormat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, GLvoid *pixels)
    cdef void glGetTexImage(GLenum target, GLint level, GLenum format, GLenum type, GLvoid *pixels)

    cdef void glMap1d(GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, GLdouble *points)
    cdef void glMap1f(GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, GLfloat *points)
    cdef void glMap2d(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble *points)
    cdef void glMap2f(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat *points)
    cdef void glGetMapdv(GLenum target, GLenum query, GLdouble *v)
    cdef void glGetMapfv(GLenum target, GLenum query, GLfloat *v)
    cdef void glGetMapiv(GLenum target, GLenum query, GLint *v)
    cdef void glEvalCoord1d(GLdouble u)
    cdef void glEvalCoord1f(GLfloat u)
    cdef void glEvalCoord1dv(GLdouble *u)
    cdef void glEvalCoord1fv(GLfloat *u)
    cdef void glEvalCoord2d(GLdouble u, GLdouble v)
    cdef void glEvalCoord2f(GLfloat u, GLfloat v)
    cdef void glEvalCoord2dv(GLdouble *u)
    cdef void glEvalCoord2fv(GLfloat *u)
    cdef void glMapGrid1d(GLint un, GLdouble u1, GLdouble u2)
    cdef void glMapGrid1f(GLint un, GLfloat u1, GLfloat u2)
    cdef void glMapGrid2d(GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2)
    cdef void glMapGrid2f(GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2)
    cdef void glEvalPoint1(GLint i)
    cdef void glEvalPoint2(GLint i, GLint j)
    cdef void glEvalMesh1(GLenum mode, GLint i1, GLint i2)
    cdef void glEvalMesh2(GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2)

    cdef void glFogf(GLenum pname, GLfloat param)
    cdef void glFogi(GLenum pname, GLint param)
    cdef void glFogfv(GLenum pname, GLfloat *params)
    cdef void glFogiv(GLenum pname, GLint *params)

    cdef void glFeedbackBuffer(GLsizei size, GLenum type, GLfloat *buffer)
    cdef void glPassThrough(GLfloat token)
    cdef void glSelectBuffer(GLsizei size, GLuint *buffer)
    cdef void glInitNames()
    cdef void glLoadName(GLuint name)
    cdef void glPushName(GLuint name)
    cdef void glPopName()

    # opengl 1.1 functions
    cdef void glGenTextures(GLsizei n, GLuint *textures)
    cdef void glDeleteTextures(GLsizei n, GLuint *textures)
    cdef void glBindTexture(GLenum target, GLuint texture)
    cdef void glPrioritizeTextures(GLsizei n, GLuint *textures, GLclampf *priorities)
    cdef GLboolean glAreTexturesResident(GLsizei n, GLuint *textures, GLboolean *residences)
    cdef GLboolean glIsTexture(GLuint texture)

    cdef void glTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, GLvoid *pixels)
    cdef void glTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels)
    cdef void glCopyTexImage1D(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border)
    cdef void glCopyTexImage2D(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)
    cdef void glCopyTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)
    cdef void glCopyTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    cdef void glVertexPointer(GLint size, GLenum type, GLsizei stride, GLvoid *ptr)
    cdef void glNormalPointer(GLenum type, GLsizei stride, GLvoid *ptr)
    cdef void glColorPointer(GLint size, GLenum type, GLsizei stride, GLvoid *ptr)
    cdef void glIndexPointer(GLenum type, GLsizei stride, GLvoid *ptr)
    cdef void glTexCoordPointer(GLint size, GLenum type, GLsizei stride, GLvoid *ptr)
    cdef void glEdgeFlagPointer(GLsizei stride, GLvoid *ptr)
    cdef void glGetPointerv(GLenum pname, GLvoid **params)
    cdef void glArrayElement(GLint i)
    cdef void glDrawArrays(GLenum mode, GLint first, GLsizei count)
    cdef void glDrawElements(GLenum mode, GLsizei count, GLenum type, GLvoid *indices)
    cdef void glInterleavedArrays(GLenum format, GLsizei stride, GLvoid *pointer)

    # finally some glext stuff we use - defining all of glext is an insane thing to do
    cdef int GL_TEXTURE_RECTANGLE_EXT
    cdef int GL_TEXTURE_RECTANGLE_NV
    cdef int GL_TEXTURE_RECTANGLE_ARB
