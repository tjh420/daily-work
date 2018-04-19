package andy.dao;

import andy.model.FPIvoice;

public interface FPIvoiceMapper {
    int deleteByPrimaryKey(String id);

    int insert(FPIvoice record);

    int insertSelective(FPIvoice record);

    FPIvoice selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(FPIvoice record);

    int updateByPrimaryKeyWithBLOBs(FPIvoice record);

    int updateByPrimaryKey(FPIvoice record);
}