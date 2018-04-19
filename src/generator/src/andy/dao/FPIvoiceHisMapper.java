package andy.dao;

import andy.model.FPIvoiceHis;

public interface FPIvoiceHisMapper {
    int deleteByPrimaryKey(String id);

    int insert(FPIvoiceHis record);

    int insertSelective(FPIvoiceHis record);

    FPIvoiceHis selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(FPIvoiceHis record);

    int updateByPrimaryKeyWithBLOBs(FPIvoiceHis record);

    int updateByPrimaryKey(FPIvoiceHis record);
}