package hexlet.code.dto.task;


import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@Getter
@Setter
public class TaskUpdateDTO {

//        "id": 1,
//            "index": 3140,
//            "createdAt": "2023-07-30",
//            "assignee_id": 1,
//            "title": "Task 1",
//            "content": "Description of task 1",
//            "status": "to_be_fixed"

    private String title;
    private String content;
    private String status;
    private Long assignee_id;
    private Set<Long> taskLabelIds;
    //idk

}
