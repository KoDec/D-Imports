//OpenAL for D Interface by KoDec/2012
//
//al.di - Main OpenAL Import

module al;

public import altypes;

extern (C)
{
	
/*
 * Renderer State management
 */
void alEnable(ALenum capability );

void  alDisable( ALenum capability ); 

ALboolean alIsEnabled( ALenum capability ); 


/*
 * State retrieval
 */
ALchar* alGetString(ALenum param);

void alGetBooleanv( ALenum param, ALboolean* data );

void alGetIntegerv( ALenum param, ALint* data );

void alGetFloatv( ALenum param, ALfloat* data );

void alGetDoublev( ALenum param, ALdouble* data );

ALboolean alGetBoolean( ALenum param );

ALint alGetInteger( ALenum param );

ALfloat alGetFloat( ALenum param );

ALdouble alGetDouble( ALenum param );


/*
 * Error support.
 * Obtain the most recent error generated in the AL state machine.
 */
ALenum alGetError();


/* 
 * Extension support.
 * Query for the presence of an extension, and obtain any appropriate
 * function pointers and enum values.
 */
ALboolean alIsExtensionPresent(in ALchar* extname );

void* alGetProcAddress(in ALchar* fname);

ALenum alGetEnumValue( in ALchar* ename);


/*
 * LISTENER
 * Listener represents the location and orientation of the
 * 'user' in 3D-space.
 *
 * Properties include: -
 *
 * Gain         AL_GAIN         ALfloat
 * Position     AL_POSITION     ALfloat[3]
 * Velocity     AL_VELOCITY     ALfloat[3]
 * Orientation  AL_ORIENTATION  ALfloat[6] (Forward then Up vectors)
*/

/*
 * Set Listener parameters
 */
void alListenerf( ALenum param, ALfloat value );

void alListener3f( ALenum param, ALfloat value1, ALfloat value2, ALfloat value3 );

void alListenerfv( ALenum param, in ALfloat* values ); 

void alListeneri( ALenum param, ALint value );

void alListener3i( ALenum param, ALint value1, ALint value2, ALint value3 );

void alListeneriv( ALenum param, in ALint* values );

/*
 * Get Listener parameters
 */
void alGetListenerf( ALenum param, ALfloat* value );

void alGetListener3f( ALenum param, ALfloat *value1, ALfloat *value2, ALfloat *value3 );

void alGetListenerfv( ALenum param, ALfloat* values );

void alGetListeneri( ALenum param, ALint* value );

void alGetListener3i( ALenum param, ALint *value1, ALint *value2, ALint *value3 );

void alGetListeneriv( ALenum param, ALint* values );


/**
 * SOURCE
 * Sources represent individual sound objects in 3D-space.
 * Sources take the PCM data provided in the specified Buffer,
 * apply Source-specific modifications, and then
 * submit them to be mixed according to spatial arrangement etc.
 * 
 * Properties include: -
 *
 * Gain                              AL_GAIN                 ALfloat
 * Min Gain                          AL_MIN_GAIN             ALfloat
 * Max Gain                          AL_MAX_GAIN             ALfloat
 * Position                          AL_POSITION             ALfloat[3]
 * Velocity                          AL_VELOCITY             ALfloat[3]
 * Direction                         AL_DIRECTION            ALfloat[3]
 * Head Relative Mode                AL_SOURCE_RELATIVE      ALint (AL_TRUE or AL_FALSE)
 * Reference Distance                AL_REFERENCE_DISTANCE   ALfloat
 * Max Distance                      AL_MAX_DISTANCE         ALfloat
 * RollOff Factor                    AL_ROLLOFF_FACTOR       ALfloat
 * Inner Angle                       AL_CONE_INNER_ANGLE     ALint or ALfloat
 * Outer Angle                       AL_CONE_OUTER_ANGLE     ALint or ALfloat
 * Cone Outer Gain                   AL_CONE_OUTER_GAIN      ALint or ALfloat
 * Pitch                             AL_PITCH                ALfloat
 * Looping                           AL_LOOPING              ALint (AL_TRUE or AL_FALSE)
 * MS Offset                         AL_MSEC_OFFSET          ALint or ALfloat
 * Byte Offset                       AL_BYTE_OFFSET          ALint or ALfloat
 * Sample Offset                     AL_SAMPLE_OFFSET        ALint or ALfloat
 * Attached Buffer                   AL_BUFFER               ALint
 * State (Query only)                AL_SOURCE_STATE         ALint
 * Buffers Queued (Query only)       AL_BUFFERS_QUEUED       ALint
 * Buffers Processed (Query only)    AL_BUFFERS_PROCESSED    ALint
 */

/* Create Source objects */
void alGenSources( ALsizei n, ALuint* sources ); 

/* Delete Source objects */
void alDeleteSources( ALsizei n, in ALuint* sources );

/* Verify a handle is a valid Source */ 
ALboolean alIsSource( ALuint sid ); 

/*
 * Set Source parameters
 */
void alSourcef( ALuint sid, ALenum param, ALfloat value ); 

void alSource3f( ALuint sid, ALenum param, ALfloat value1, ALfloat value2, ALfloat value3 );

void alSourcefv( ALuint sid, ALenum param, in ALfloat* values ); 

void alSourcei( ALuint sid, ALenum param, ALint value ); 

void alSource3i( ALuint sid, ALenum param, ALint value1, ALint value2, ALint value3 );

void alSourceiv( ALuint sid, ALenum param, in ALint* values );

/*
 * Get Source parameters
 */
void alGetSourcef( ALuint sid, ALenum param, ALfloat* value );

void alGetSource3f( ALuint sid, ALenum param, ALfloat* value1, ALfloat* value2, ALfloat* value3);

void alGetSourcefv( ALuint sid, ALenum param, ALfloat* values );

void alGetSourcei( ALuint sid,  ALenum param, ALint* value );

void alGetSource3i( ALuint sid, ALenum param, ALint* value1, ALint* value2, ALint* value3);

void alGetSourceiv( ALuint sid,  ALenum param, ALint* values );


/*
 * Source vector based playback calls
 */

/* Play, replay, or resume (if paused) a list of Sources */
void alSourcePlayv( ALsizei ns, in ALuint *sids );

/* Stop a list of Sources */
void alSourceStopv( ALsizei ns, in ALuint *sids );

/* Rewind a list of Sources */
void alSourceRewindv( ALsizei ns, in ALuint *sids );

/* Pause a list of Sources */
void alSourcePausev( ALsizei ns, in ALuint *sids );

/*
 * Source based playback calls
 */

/* Play, replay, or resume a Source */
void alSourcePlay( ALuint sid );

/* Stop a Source */
void alSourceStop( ALuint sid );

/* Rewind a Source (set playback postiton to beginning) */
void alSourceRewind( ALuint sid );

/* Pause a Source */
void alSourcePause( ALuint sid );

/*
 * Source Queuing 
 */
void alSourceQueueBuffers( ALuint sid, ALsizei numEntries, in ALuint *bids );

void alSourceUnqueueBuffers( ALuint sid, ALsizei numEntries, ALuint *bids );


/**
 * BUFFER
 * Buffer objects are storage space for sample data.
 * Buffers are referred to by Sources. One Buffer can be used
 * by multiple Sources.
 *
 * Properties include: -
 *
 * Frequency (Query only)    AL_FREQUENCY      ALint
 * Size (Query only)         AL_SIZE           ALint
 * Bits (Query only)         AL_BITS           ALint
 * Channels (Query only)     AL_CHANNELS       ALint
 */

/* Create Buffer objects */
void alGenBuffers( ALsizei n, ALuint* buffers );

/* Delete Buffer objects */
void alDeleteBuffers( ALsizei n, in ALuint* buffers );

/* Verify a handle is a valid Buffer */
ALboolean alIsBuffer( ALuint bid );

/* Specify the data to be copied into a buffer */
void alBufferData( ALuint bid, ALenum format, in ALvoid* data, ALsizei size, ALsizei freq );

/*
 * Set Buffer parameters
 */
void alBufferf( ALuint bid, ALenum param, ALfloat value );

void alBuffer3f( ALuint bid, ALenum param, ALfloat value1, ALfloat value2, ALfloat value3 );

void alBufferfv( ALuint bid, ALenum param, in ALfloat* values );

void alBufferi( ALuint bid, ALenum param, ALint value );

void alBuffer3i( ALuint bid, ALenum param, ALint value1, ALint value2, ALint value3 );

void alBufferiv( ALuint bid, ALenum param, in ALint* values );

/*
 * Get Buffer parameters
 */
void alGetBufferf( ALuint bid, ALenum param, ALfloat* value );

void alGetBuffer3f( ALuint bid, ALenum param, ALfloat* value1, ALfloat* value2, ALfloat* value3);

void alGetBufferfv( ALuint bid, ALenum param, ALfloat* values );

void alGetBufferi( ALuint bid, ALenum param, ALint* value );

void alGetBuffer3i( ALuint bid, ALenum param, ALint* value1, ALint* value2, ALint* value3);

void alGetBufferiv( ALuint bid, ALenum param, ALint* values );


/*
 * Global Parameters
 */
void alDopplerFactor( ALfloat value );

void alDopplerVelocity( ALfloat value );

void alSpeedOfSound( ALfloat value );

void alDistanceModel( ALenum distanceModel );

/*
 * Pointer-to-function types, useful for dynamically getting AL  points.
 */
void function(ALenum) LPALENABLE;
void function(ALenum) LPALDISABLE; 
ALboolean function(ALenum) LPALISENABLED; 
const ALchar* function(ALenum) LPALGETSTRING;
void function(ALenum, ALboolean) LPALGETBOOLEANV;
void function(ALenum, ALint*) LPALGETINTEGERV;
void function(ALenum, ALfloat) LPALGETFLOATV;
void function(ALenum, ALdouble) LPALGETDOUBLEV;
ALboolean function(ALenum) LPALGETBOOLEAN;
ALint function(ALenum) LPALGETINTEGER;
ALfloat function(ALenum) LPALGETFLOAT;
ALdouble function(ALenum) LPALGETDOUBLE;
ALenum function() LPALGETERROR;
ALboolean function(in ALchar*) LPALISEXTENSIONPRESENT;
void* function(in ALchar*) LPALGETPROCADDRESS;
ALenum function(in ALchar*) LPALGETENUMVALUE;
void function(ALenum, ALfloat) LPALLISTENERF;
void function(ALenum, ALfloat, ALfloat, ALfloat) LPALLISTENER3F;
void function(ALenum, in ALfloat*) LPALLISTENERFV;
void function(ALenum, ALint) LPALLISTENERI;
void function(ALenum, ALint, ALint, ALint) LPALLISTENER3I;
void function(ALenum, in ALint*) LPALLISTENERIV;
void function(ALenum, ALfloat*) LPALGETLISTENERF;
void function(ALenum, ALfloat, ALfloat, ALfloat) LPALGETLISTENER3F;
void function(ALenum, ALfloat*) LPALGETLISTENERFV;
void function(ALenum, ALint*) LPALGETLISTENERI;
void function(ALenum, ALint*, ALint*, ALint*) LPALGETLISTENER3I;
void function(ALenum, ALint*) LPALGETLISTENERIV;
void function(ALsizei, ALuint*) LPALGENSOURCES; 
void function(ALsizei, in ALuint*) LPALDELETESOURCES;
ALboolean function(ALuint) LPALISSOURCE; 
void function(ALuint, ALenum, ALfloat) LPALSOURCEF; 
void function(ALuint, ALenum, ALfloat, ALfloat, ALfloat) LPALSOURCE3F;
void function(ALuint, ALenum, in ALfloat*) LPALSOURCEFV;
void function(ALuint, ALenum, ALint) LPALSOURCEI; 
void function(ALuint, ALenum, ALint, ALint, ALint) LPALSOURCE3I;
void function(ALuint, ALenum, in ALint*) LPALSOURCEIV;
void function(ALuint, ALenum, ALfloat*) LPALGETSOURCEF;
void function(ALuint, ALenum, ALfloat*, ALfloat*, ALfloat*) LPALGETSOURCE3F;
void function(ALuint, ALenum, ALfloat*) LPALGETSOURCEFV;
void function(ALuint, ALenum, ALint*) LPALGETSOURCEI;
void function(ALuint, ALenum, ALint*, ALint*, ALint*) LPALGETSOURCE3I;
void function(ALuint, ALenum, ALint*) LPALGETSOURCEIV;
void function(ALsizei, in ALuint*) LPALSOURCEPLAYV;
void function(ALsizei, in ALuint)  LPALSOURCESTOPV;
void function(ALsizei, in ALuint*) LPALSOURCEREWINDV;
void function(ALsizei, in ALuint*) LPALSOURCEPAUSEV;
void function(ALuint) LPALSOURCEPLAY;
void function(ALuint) LPALSOURCESTOP;
void function(ALuint) LPALSOURCEREWIND;
void function(ALuint) LPALSOURCEPAUSE;
void function(ALuint, ALsizei, in ALuint) LPALSOURCEQUEUEBUFFERS;
void function(ALuint, ALsizei, ALuint*) LPALSOURCEUNQUEUEBUFFERS;
void function(ALsizei, ALuint*) LPALGENBUFFERS;
void function(ALsizei, in ALuint*) LPALDELETEBUFFERS;
ALboolean function(ALuint) LPALISBUFFER;
void function(ALuint, ALenum, in ALvoid*, ALsizei, ALsizei) LPALBUFFERDATA;
void function(ALuint, ALenum, ALfloat) LPALBUFFERF;
void function(ALuint, ALenum, ALfloat, ALfloat, ALfloat) LPALBUFFER3F;
void function(ALuint, ALenum, in ALfloat*) LPALBUFFERFV;
void function(ALuint, ALenum, ALint) LPALBUFFERI;
void function(ALuint, ALenum, ALint, ALint, ALint) LPALBUFFER3I;
void function(ALuint, ALenum, in ALint*) LPALBUFFERIV;
void function(ALuint, ALenum, ALfloat*) LPALGETBUFFERF;
void function(ALuint, ALenum, ALfloat*, ALfloat*, ALfloat*) LPALGETBUFFER3F;
void function(ALuint, ALenum, ALfloat*) LPALGETBUFFERFV;
void function(ALuint, ALenum, ALint*) LPALGETBUFFERI;
void function(ALuint, ALenum, ALint*, ALint*, ALint*) LPALGETBUFFER3I;
void function(ALuint, ALenum, ALint*) LPALGETBUFFERIV;
void function(ALfloat) LPALDOPPLERFACTOR;
void function(ALfloat) LPALDOPPLERVELOCITY;
void function(ALfloat) LPALSPEEDOFSOUND;
void function(ALenum)  LPALDISTANCEMODEL;

}
