import React from 'react';
import styles from './LeadStageTracker.module.css';

interface Stage {
  name: string;
  completed: boolean;
  isActive: boolean;
  date?: string;
}

interface LeadStageTrackerProps {
  dealName: string;
  owner: string;
  leadType: string;
  stages: Stage[];
  demoDate?: string;
  dealInfo?: string;
}

const LeadStageTracker: React.FC<LeadStageTrackerProps> = ({
  dealName,
  owner,
  leadType,
  stages,
  demoDate,
  dealInfo,
}) => {
  return (
    <div className={styles.container}>
      <div className={styles.header}>
        <h2 className={styles.title}>Lead stage tracker</h2>
      </div>

      <div className={styles.dealInfo}>
        <div className={styles.dealHeader}>
          <span className={styles.badge}>Primary</span>
          <span className={styles.dealName}>{dealName}</span>
        </div>
        <div className={styles.dealDetails}>
          <p>
            <strong>Owner:</strong> {owner}
          </p>
          <p>
            <strong>Lead type:</strong> {leadType}
          </p>
        </div>
      </div>

      <div className={styles.stagesContainer}>
        <div className={styles.stagesList}>
          {stages.map((stage, index) => (
            <div key={index} className={styles.stageItem}>
              <div className={styles.stageIndicator}>
                {stage.completed ? (
                  <span className={styles.checkmarkCompleted}>✓</span>
                ) : stage.isActive ? (
                  <span className={styles.checkmarkActive}>✓</span>
                ) : (
                  <span className={styles.checkmarkPending}>•</span>
                )}
              </div>
              <span className={styles.stageName}>{stage.name}</span>
            </div>
          ))}
        </div>
      </div>

      {(demoDate || dealInfo) && (
        <div className={styles.footer}>
          {demoDate && <p className={styles.demoDate}>{demoDate}</p>}
          {dealInfo && <p className={styles.dealInfoText}>{dealInfo}</p>}
        </div>
      )}
    </div>
  );
};

export default LeadStageTracker;
