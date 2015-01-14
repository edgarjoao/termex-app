package com.termex.common.exception;
/**
 * 
 * @author joao
 *
 */
public abstract class TermexExcepton extends Exception {
	/**
	 * 
	 */
	private static final long serialVersionUID = -6511812918957606777L;
	/** Code Exception for DAO layer */
	public static final String 	LAYER_DAO = "DAO";
	/** Code Exception for Service layer */
	public static final String 	LAYER_SERVICE = "SER";
	/** Code Exception for Action layer */
	public static final String 	LAYER_CONTROLLER = "CNT";
	/** Code Exception for Action layer */
	public static final String 	LAYER_CONVERTER = "CNV";
	/** Code Exception for Insert actions */
	public static final String 	ACTION_INSERT = "101";
	/** Code Exception for Delete actions */
	public static final String 	ACTION_DELETE = "102";
	/** Code Exception for Update actions */
	public static final String 	ACTION_UPDATE = "103";
	/** Code Exception for List Handle */
	public static final String 	ACTION_LISTS = "104";
	/** Code Exception for Select */
	public static final String 	ACTION_SELECT = "105";
	/** Code Exception for Login */
	public static final String ACTION_BATCH_UPDATE = "106";
	/** Code Exception for Login */
	public static final String ACTION_CONVERTER = "107";
	/** Specific error code*/
	private String errorCode;
	/**
	 * Gets specific error code
	 * @return Error code
	 */
	public String getErrorCode() {
		return errorCode;
	}
	/**
	 * Sets specific error code
	 * @param nErrorCode
	 */
	private void setErrorCode(String nErrorCode) {
		this.errorCode = nErrorCode;
	}
	/** Constructor Handling Exception*/
	public TermexExcepton(Exception exception) {
		super(exception);
	}
	/** Default void Constructor */
	public TermexExcepton(){
	}
	/** Constructs a new exception with the specified detail message.*/
	public TermexExcepton(String message) {
		super(message);
		setErrorCode(message);
	}
	/** Abstract method to Gets the Exception Codes */
	public abstract String getExceptionCode();
}
