package com.attendance.system.service;

import org.springframework.http.ResponseEntity;
import org.springframework.lang.NonNull;

import com.attendance.system.model.Attendance;
import com.attendance.system.model.QrRequest;

public interface AttendanceService {

	public ResponseEntity<String> addAttendance(@NonNull Attendance attendance);
	public ResponseEntity<String> updateAttendance(@NonNull Integer aid, Boolean isPresent);
	public ResponseEntity<Attendance> getAttendance(@NonNull Integer aid);
	public ResponseEntity<String> startSession(String course_id, String subject_id, String sem_id, String division,
			String facultyId);
	ResponseEntity<String> stopSession(String course_id, String subject_id, String sem_id, String division,
			String facultyId);
	ResponseEntity<Boolean> fillAttendance(Integer mid,@NonNull Long sid,QrRequest qrRequest);
}
