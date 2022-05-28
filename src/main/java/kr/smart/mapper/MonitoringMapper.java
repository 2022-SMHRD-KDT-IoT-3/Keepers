package kr.smart.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MonitoringMapper {

	public List<CareVO> monitorSelect(String c_manager_id);

	public ArrayList<ValueVO> monitoringChart(int d_c_seq);



}
