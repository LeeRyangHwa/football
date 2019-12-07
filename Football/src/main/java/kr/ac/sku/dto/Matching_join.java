package kr.ac.sku.dto;

import java.time.LocalDateTime;

import org.springframework.format.annotation.DateTimeFormat;

public class Matching_join {
	private int matchNum;
	private int teamNum;
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss")
    private LocalDateTime joinTime;
	private boolean matchResult;
	private boolean matchCancel;
}
