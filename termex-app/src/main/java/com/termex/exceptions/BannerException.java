package com.termex.exceptions;

import com.termex.common.exception.TermexException;
/**
 *
 * @author rioslore
 *
 */
public class BannerException extends TermexException{

	/**
	 *
	 */
	private static final long serialVersionUID = 3404492668441013696L;
	/** Code Identifier Module */
	private static final String MODULE_EXCEPTION_ERR = "04";
	/** Layer Code Level */
	private String prosLevel	=	null;
	/** Handler Code Action */
	private String prosAction	=	null;
	/** Code Message constructor */
	StringBuffer eCode;

	public BannerException(Exception exception, String level, String action){
		super(exception);
		this.prosLevel = level;
		this.prosAction = action;
	}

	public BannerException(String message, String level, String action){
		super(message);
		this.prosLevel = level;
		this.prosAction = action;
	}

	/** Sets the Code Action */
	public void setProsAction(String prosAction) {
		this.prosAction = prosAction;
	}
	/** Sets the Code Level */
	public void setProsLevel(String prosLevel) {
		this.prosLevel = prosLevel;
	}

	/** Gets the Code Exception */
	public String getExceptionCode() {
		eCode = new StringBuffer(0);
		eCode.append(MODULE_EXCEPTION_ERR);
		eCode.append(this.prosAction);
		eCode.append(this.prosLevel);
		return eCode.toString();
	}

}
