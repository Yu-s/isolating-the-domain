package example.domain.model.attendance.worktimerecord;

import example.domain.type.time.QuarterHour;

/**
 * 業務時間
 */
public class WorkTime {

    QuarterHour value;

    public WorkTime(DaytimeWorkTime daytimeWorkTime, MidnightWorkTime midnightWorkTime) {
        this.value = daytimeWorkTime.quarterHour().add(midnightWorkTime.quarterHour());
    }

    public QuarterHour quarterHour() {
        return value;
    }

    @Override
    public String toString() {
        return value.toString();
    }
}
