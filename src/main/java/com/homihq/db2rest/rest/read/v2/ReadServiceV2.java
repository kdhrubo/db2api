package com.homihq.db2rest.rest.read.v2;

import com.homihq.db2rest.rest.read.helper.*;
import com.homihq.db2rest.rest.read.v2.dto.ReadContextV2;
import com.homihq.db2rest.rest.read.v2.processor.QueryCreatorTemplate;
import com.homihq.db2rest.rest.read.v2.processor.ReadPreProcessor;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ReadServiceV2 {

    private final SelectBuilder selectBuilder;
    private final JoinBuilder joinBuilder;
    private final WhereBuilder whereBuilder;
    private final LimitPaginationBuilder limitPaginationBuilder;
    private final SortBuilder sortBuilder;

    private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    private final List<ReadPreProcessor> processorList;
    private final QueryCreatorTemplate queryCreatorTemplate;
    public Object find(ReadContextV2 readContextV2) {


        for(ReadPreProcessor processor : processorList) {
            processor.process(readContextV2);
        }

        queryCreatorTemplate.createQuery(readContextV2);

        /*

        selectBuilder.build(ctx);
        joinBuilder.build(ctx);
        whereBuilder.build(ctx);
        limitPaginationBuilder.build(ctx);
        sortBuilder.build(ctx);

        String sql = ctx.prepareSQL();
        Map<String,Object> bindValues = ctx.prepareParameters();

        log.info("SQL - {}", sql);
        log.info("Bind variables - {}", bindValues);

        return namedParameterJdbcTemplate.queryForList(sql, bindValues);


         */

        return null;
    }


}
