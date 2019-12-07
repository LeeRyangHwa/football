package kr.ac.sku.dto;

import java.time.LocalDateTime;

import org.springframework.format.annotation.DateTimeFormat;

public class Matchwant {
	private int matchNum;
	private int teamNum;
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss")
    private LocalDateTime joinTime;
	private boolean matchResult;
	private boolean matchCancel;
}
