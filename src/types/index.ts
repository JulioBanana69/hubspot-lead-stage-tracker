export interface PipelineStage {
  id: string;
  label: string;
  value: string;
  order: number;
  color: string;
  icon: string;
}

export interface LeadMetadata {
  dealId: string;
  dealName: string;
  ownerName: string;
  ownerId: string;
  leadType: string;
  currentStage: string;
  currentStageName: string;
  dealInfo?: string;
}

export interface StageTrackerConfig {
  stages: PipelineStage[];
  completedStages: string[];
  currentStage: string;
}
