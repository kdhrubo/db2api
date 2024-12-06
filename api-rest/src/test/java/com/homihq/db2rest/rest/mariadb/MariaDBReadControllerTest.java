package com.homihq.db2rest.rest.mariadb;

import com.homihq.db2rest.MariaDBBaseIntegrationTest;
import org.junit.jupiter.api.ClassOrderer;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestClassOrder;
import org.springframework.http.MediaType;

import static com.homihq.db2rest.jdbc.rest.RdbmsRestApi.VERSION;
import static org.hamcrest.Matchers.hasSize;
import static org.hamcrest.Matchers.notNullValue;
import static org.hamcrest.core.AnyOf.anyOf;
import static org.springframework.http.MediaType.APPLICATION_JSON;
import static org.springframework.restdocs.mockmvc.MockMvcRestDocumentation.document;
import static org.springframework.restdocs.mockmvc.RestDocumentationRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@TestClassOrder(ClassOrderer.OrderAnnotation.class)
@Order(301)
class MariaDBReadControllerTest extends MariaDBBaseIntegrationTest {
    @Test
    @DisplayName("Test find all films - all columns.")
    void findAllFilms() throws Exception {

        mockMvc.perform(get(VERSION + "/mariadb/film")
                        .contentType(APPLICATION_JSON).accept(APPLICATION_JSON))
                //.andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.*").isArray())
                //.andExpect(jsonPath("$.*", hasSize(4)))
                .andExpect(jsonPath("$.*", anyOf(hasSize(4), hasSize(9), hasSize(8))))
                .andExpect(jsonPath("$[0].*", hasSize(14)))
                .andDo(document("mariadb-get-all-films-all-columns"));
    }

    @Test
    @DisplayName("Test find all films - 3 columns")
    void findAllFilmsWithThreeCols() throws Exception {
        mockMvc.perform(get(VERSION + "/mariadb/film")
                        .contentType(APPLICATION_JSON).accept(MediaType.APPLICATION_JSON)
                        .param("fields", "title,description,release_year")
                )
                //.andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.*").isArray())
                .andExpect(jsonPath("$.*", anyOf(hasSize(4), hasSize(9), hasSize(8))))
                .andExpect(jsonPath("$[0].*", hasSize(3)))
                .andDo(document("mariadb-find-all-films-3-columns"));
    }

    @Test
    @DisplayName("Test find all films - with column alias")
    void findAllFilmsWithColumnAlias() throws Exception {
        mockMvc.perform(get(VERSION + "/mariadb/film")
                        .contentType(APPLICATION_JSON).accept(MediaType.APPLICATION_JSON)
                        .param("fields", "title,description,release_year:releaseYear")
                )
                //.andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.*").isArray())
                .andExpect(jsonPath("$.*", anyOf(hasSize(4), hasSize(9), hasSize(8))))
                .andExpect(jsonPath("$[0].title", notNullValue()))
                .andExpect(jsonPath("$[0].description", notNullValue()))
                .andExpect(jsonPath("$[0].releaseYear", notNullValue()))
                .andDo(document("mariadb-find-all-films-with-column-alias"));
    }


    @Test
    @DisplayName("Get one")
    void findOneFilm() throws Exception {
        mockMvc.perform(get(VERSION + "/mariadb/film/one")
                        .accept(MediaType.APPLICATION_JSON)
                        .param("fields", "title")
                        .param("filter", "film_id==1"))
                .andExpect(status().isOk())
                //.andDo(print())
                .andDo(document("mariadb-get-on-film"));
    }
}
